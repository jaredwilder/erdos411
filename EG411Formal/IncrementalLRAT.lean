import Mathlib.Tactic.Sat.FromLRAT

/-! A memory-bounded LRAT importer that declares learned clauses incrementally. -/

open Lean

namespace Mathlib.Tactic.Sat.Incremental

open Mathlib.Tactic.Sat
open Std.Internal
open Std.Internal.Parsec String

inductive ProofPack (f : _root_.Sat.Fmla) : List _root_.Sat.Clause -> Prop
  | nil : ProofPack f []
  | cons {clause clauses} : f.proof clause -> ProofPack f clauses ->
      ProofPack f (clause :: clauses)

theorem ProofPack.head {f clause clauses} :
    ProofPack f (clause :: clauses) -> f.proof clause
  | .cons proof _ => proof

theorem ProofPack.tail {f clause clauses} :
    ProofPack f (clause :: clauses) -> ProofPack f clauses
  | .cons _ proofs => proofs

def clauseName (ctxName : Name) (id : Nat) : Name :=
  ctxName.getPrefix ++ Name.mkSimple s!"c{id}"

/-- Declare the CNF context once, for later chunk imports. -/
def declareLRATBase (cnf : String) (ctxName : Name) : MetaM Unit := do
  let Parsec.ParseResult.success _ (_, arr) :=
      Parser.parseDimacs (Sigma.mk cnf cnf.startPos)
    | throwError "parse CNF failed"
  if arr.isEmpty then throwError "empty CNF"
  let ctx' := buildConj arr 0 arr.size
  addDecl <| Declaration.defnDecl {
    name := ctxName
    levelParams := []
    type := mkConst ``_root_.Sat.Fmla
    value := ctx'
    hints := ReducibilityHints.regular 0
    safety := DefinitionSafety.safe
  }
/--
Check one LRAT slice. `seed` contains prior live clauses as LRAT additions with
empty hint lists (`id lits 0 0`). Their proofs are imported constants named by
the global clause ID. New clauses are declared using the same stable naming.
-/
def declareLRATChunk (ctxName : Name) (cnf seed exports chunk : String)
    (publicEmptyName : Option Name := none) : MetaM Unit := do
  let ctx := mkConst ctxName
  let Parsec.ParseResult.success _ (_, originalClauses) :=
      Parser.parseDimacs (Sigma.mk cnf cnf.startPos)
    | throwError "parse CNF failed in LRAT chunk"
  let ctxInfo ← getConstInfo ctxName
  let ctxValue ← match ctxInfo with
    | .defnInfo info => pure info.value
    | _ => throwError "LRAT context is not a definition"
  let initialProof := mkApp (mkConst ``_root_.Sat.Fmla.subsumes_self) ctx
  let originalDB :=
    (buildClauses originalClauses ctx 0 originalClauses.size ctxValue initialProof default).2
  let Parsec.ParseResult.success _ seeds :=
      Parser.parseLRAT (Sigma.mk seed seed.startPos)
    | throwError "parse LRAT seed failed"
  let mut db : Std.HashMap Nat Clause := {}
  for row in seeds do
    match row with
    | LRATStep.del _ => throwError "deletion in LRAT seed"
    | LRATStep.add id lits _ =>
      let expr := buildClause lits
      let proof := match originalDB[id]? with
        | some clause => clause.proof
        | none => mkConst (clauseName ctxName id)
      db := db.insert id { lits := lits, expr := expr, proof := proof }
  let Parsec.ParseResult.success _ steps :=
      Parser.parseLRAT (Sigma.mk chunk chunk.startPos)
    | throwError "parse LRAT chunk failed"
  let Parsec.ParseResult.success _ exportRows :=
      Parser.parseLRAT (Sigma.mk exports exports.startPos)
    | throwError "parse LRAT export list failed"
  let mut exportIds : Array Nat := #[]
  for row in exportRows do
    match row with
    | LRATStep.del ids => exportIds := exportIds ++ ids
    | LRATStep.add _ _ _ => throwError "addition in LRAT export list"
  let mut emptyProof : Option Expr := none
  let mut generated : Std.HashMap Nat Clause := {}
  for step in steps do
    match step with
    | LRATStep.del ids => db := ids.foldl (fun acc id => acc.erase id) db
    | LRATStep.add id lits hints =>
      let clauseExpr := buildClause lits
      match buildProofStep db lits hints ctx clauseExpr with
      | Except.error msg => throwError msg
      | Except.ok proof =>
        let clause := { lits := lits, expr := clauseExpr, proof := proof }
        generated := generated.insert id clause
        if lits.isEmpty then emptyProof := some proof
        else db := db.insert id clause
  let mut exported : Array (Prod Nat Clause) := #[]
  for id in exportIds do
    let some clause := generated[id]?
      | throwError s!"export clause {id} was not generated in this chunk"
    exported := exported.push (id, clause)
  unless exported.isEmpty do
    let clauseType := mkConst ``_root_.Sat.Clause
    let listNil := mkApp (mkConst ``List.nil [levelZero]) clauseType
    let listCons clause clauses :=
      mkApp3 (mkConst ``List.cons [levelZero]) clauseType clause clauses
    let mut packList := listNil
    let mut packProof := mkApp (mkConst ``ProofPack.nil) ctx
    for (_, clause) in exported.reverse do
      let priorList := packList
      packList := listCons clause.expr priorList
      packProof := mkAppN (mkConst ``ProofPack.cons)
        #[ctx, clause.expr, priorList, clause.proof, packProof]
    let some firstExport := exported[0]? | throwError "empty export pack"
    let packName := ctxName.getPrefix ++ Name.mkSimple s!"pack{firstExport.1}"
    addDecl <| Declaration.thmDecl {
      name := packName
      levelParams := []
      type := mkApp2 (mkConst ``ProofPack) ctx packList
      value := packProof
    }
    let mut currentPack := mkConst packName
    let mut currentList := packList
    for (id, clause) in exported do
      let tailList := currentList.appArg!
      let proof := mkAppN (mkConst ``ProofPack.head)
        #[ctx, clause.expr, tailList, currentPack]
      addDecl <| Declaration.thmDecl {
        name := clauseName ctxName id
        levelParams := []
        type := mkApp2 (mkConst ``_root_.Sat.Fmla.proof) ctx clause.expr
        value := proof
      }
      currentPack := mkAppN (mkConst ``ProofPack.tail)
        #[ctx, clause.expr, tailList, currentPack]
      currentList := tailList
  match publicEmptyName with
  | none => pure ()
  | some theoremName =>
    let some proof := emptyProof | throwError "final LRAT chunk did not prove the empty clause"
    addDecl <| Declaration.thmDecl {
      name := theoremName
      levelParams := []
      type := mkApp2 (mkConst ``_root_.Sat.Fmla.proof) ctx (buildClause #[])
      value := proof
    }

def fromLRATIncremental (cnf lrat : String) (name : Name) : MetaM Unit := do
  let Parsec.ParseResult.success _ (nvars, arr) :=
      Parser.parseDimacs (Sigma.mk cnf cnf.startPos)
    | throwError "parse CNF failed"
  if arr.isEmpty then throwError "empty CNF"

  let ctx' := buildConj arr 0 arr.size
  let ctxName <- mkAuxDeclName (name ++ `ctx)
  addDecl <| Declaration.defnDecl {
    name := ctxName
    levelParams := []
    type := mkConst ``_root_.Sat.Fmla
    value := ctx'
    hints := ReducibilityHints.regular 0
    safety := DefinitionSafety.safe
  }
  let ctx := mkConst ctxName
  let Parsec.ParseResult.success _ steps :=
      Parser.parseLRAT (Sigma.mk lrat lrat.startPos)
    | throwError "parse LRAT failed"

  let initialProof := mkApp (mkConst ``_root_.Sat.Fmla.subsumes_self) ctx
  let mut db := (buildClauses arr ctx 0 arr.size ctx' initialProof default).2
  let mut serial := 0
  let mut emptyProof : Option Expr := none

  for step in steps do
    match step with
    | LRATStep.del ids => db := ids.foldl (fun acc id => acc.erase id) db
    | LRATStep.add id lits hints =>
      let clauseExpr := buildClause lits
      match buildProofStep db lits hints ctx clauseExpr with
      | Except.error msg => throwError msg
      | Except.ok proof =>
        let stepName := name ++ Name.mkSimple s!"lratStep{serial}"
        serial := serial + 1
        addDecl <| Declaration.thmDecl {
          name := stepName
          levelParams := []
          type := mkApp2 (mkConst ``_root_.Sat.Fmla.proof) ctx clauseExpr
          value := proof
        }
        let proofConst := mkConst stepName
        if lits.isEmpty then
          emptyProof := some proofConst
        else
          db := db.insert id { lits := lits, expr := clauseExpr, proof := proofConst }

  let some proof := emptyProof | throwError "failed to prove empty clause"
  let (type, value) := buildReify ctx ctx' proof nvars
  addDecl <| Declaration.thmDecl { name, levelParams := [], type, value }

open Lean Elab Term

elab "incremental_lrat_base " ctx:ident ppSpace cnf:term:max : command => do
  let ctxName := (← getCurrNamespace) ++ ctx.getId
  Command.liftTermElabM do
    let cnf ← unsafe evalTerm String (mkConst ``String) cnf
    declareLRATBase cnf ctxName

elab "incremental_lrat_chunk " ctx:ident ppSpace cnf:term:max ppSpace
    seed:term:max ppSpace exports:term:max ppSpace chunk:term:max : command => do
  let ctxName := ctx.getId
  Command.liftTermElabM do
    let cnf ← unsafe evalTerm String (mkConst ``String) cnf
    let seed ← unsafe evalTerm String (mkConst ``String) seed
    let exports ← unsafe evalTerm String (mkConst ``String) exports
    let chunk ← unsafe evalTerm String (mkConst ``String) chunk
    declareLRATChunk ctxName cnf seed exports chunk

elab "incremental_lrat_final " theoremName:ident ppSpace ctx:ident ppSpace
    cnf:term:max ppSpace seed:term:max ppSpace exports:term:max ppSpace chunk:term:max : command => do
  let publicName := (← getCurrNamespace) ++ theoremName.getId
  let ctxName := ctx.getId
  Command.liftTermElabM do
    let cnf ← unsafe evalTerm String (mkConst ``String) cnf
    let seed ← unsafe evalTerm String (mkConst ``String) seed
    let exports ← unsafe evalTerm String (mkConst ``String) exports
    let chunk ← unsafe evalTerm String (mkConst ``String) chunk
    declareLRATChunk ctxName cnf seed exports chunk (some publicName)

elab "incremental_lrat_proof " n:ident ppSpace cnf:term:max ppSpace lrat:term:max : command => do
  let ns <- getCurrNamespace
  let name := ns ++ n.getId
  Command.liftTermElabM do
    let cnf <- unsafe evalTerm String (mkConst ``String) cnf
    let lrat <- unsafe evalTerm String (mkConst ``String) lrat
    fromLRATIncremental cnf lrat name
    let value <- mkConstWithLevelParams name
    addTermInfo' n value (isBinder := true) |>.run'

end Mathlib.Tactic.Sat.Incremental
