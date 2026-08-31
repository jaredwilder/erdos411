import EG411Formal.C3Span50SemanticClauses.Segment000
import EG411Formal.C3Span50SemanticClauses.Segment001
import EG411Formal.C3Span50SemanticClauses.Segment002
import EG411Formal.C3Span50SemanticClauses.Segment003
import EG411Formal.C3Span50SemanticClauses.Segment004
import EG411Formal.C3Span50SemanticClauses.Segment005
import EG411Formal.C3Span50SemanticClauses.Segment006
import EG411Formal.C3Span50SemanticClauses.Segment007
import EG411Formal.C3Span50SemanticClauses.Segment008
import EG411Formal.C3Span50SemanticClauses.Segment009
import EG411Formal.C3Span50SemanticClauses.Segment010
import EG411Formal.C3Span50SemanticClauses.Segment011
import EG411Formal.C3Span50SemanticClauses.Segment012
import EG411Formal.C3Span50SemanticClauses.Segment013
import EG411Formal.C3Span50SemanticClauses.Segment014
import EG411Formal.C3Span50SemanticClauses.Segment015
import EG411Formal.C3Span50SemanticClauses.Segment016
import EG411Formal.C3Span50SemanticClauses.Segment017
import EG411Formal.C3Span50SemanticClauses.Segment018
import EG411Formal.C3Span50SemanticClauses.Segment019
import EG411Formal.C3Span50SemanticClauses.Segment020
import EG411Formal.C3Span50SemanticClauses.Segment021
import EG411Formal.C3Span50SemanticClauses.Segment022
import EG411Formal.C3Span50SemanticClauses.Segment023
import EG411Formal.C3Span50SemanticClauses.Segment024
import EG411Formal.C3Span50SemanticClauses.Segment025
import EG411Formal.C3Span50SemanticClauses.Segment026
import EG411Formal.C3Span50SemanticClauses.Segment027
import EG411Formal.C3Span50SemanticClauses.Segment028
import EG411Formal.C3Span50SemanticClauses.Segment029
import EG411Formal.C3Span50SemanticClauses.Segment030
import EG411Formal.C3Span50SemanticClauses.Segment031
import EG411Formal.C3Span50SemanticClauses.Segment032

namespace C3Span50Semantic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def allClauses : Sat.Fmla :=
    segment000 ++ (segment001 ++ (segment002 ++ (segment003 ++ (segment004 ++ (segment005 ++ (segment006 ++ (segment007 ++ (segment008 ++ (segment009 ++ (segment010 ++ (segment011 ++ (segment012 ++ (segment013 ++ (segment014 ++ (segment015 ++ (segment016 ++ (segment017 ++ (segment018 ++ (segment019 ++ (segment020 ++ (segment021 ++ (segment022 ++ (segment023 ++ (segment024 ++ (segment025 ++ (segment026 ++ (segment027 ++ (segment028 ++ (segment029 ++ (segment030 ++ (segment031 ++ (segment032))))))))))))))))))))))))))))))))

theorem satisfiesAll (x : BitVec 50)
    (hcard : 12 ≤ selectedCount x) (hno : hasC3Violation x = false) :
    List.Forall ((valuation x).satisfies) allClauses := by
  exact List.forall_append.mpr ⟨satisfies000 x hcard hno, List.forall_append.mpr ⟨satisfies001 x hcard hno, List.forall_append.mpr ⟨satisfies002 x hcard hno, List.forall_append.mpr ⟨satisfies003 x hcard hno, List.forall_append.mpr ⟨satisfies004 x hcard hno, List.forall_append.mpr ⟨satisfies005 x hcard hno, List.forall_append.mpr ⟨satisfies006 x hcard hno, List.forall_append.mpr ⟨satisfies007 x hcard hno, List.forall_append.mpr ⟨satisfies008 x hcard hno, List.forall_append.mpr ⟨satisfies009 x hcard hno, List.forall_append.mpr ⟨satisfies010 x hcard hno, List.forall_append.mpr ⟨satisfies011 x hcard hno, List.forall_append.mpr ⟨satisfies012 x hcard hno, List.forall_append.mpr ⟨satisfies013 x hcard hno, List.forall_append.mpr ⟨satisfies014 x hcard hno, List.forall_append.mpr ⟨satisfies015 x hcard hno, List.forall_append.mpr ⟨satisfies016 x hcard hno, List.forall_append.mpr ⟨satisfies017 x hcard hno, List.forall_append.mpr ⟨satisfies018 x hcard hno, List.forall_append.mpr ⟨satisfies019 x hcard hno, List.forall_append.mpr ⟨satisfies020 x hcard hno, List.forall_append.mpr ⟨satisfies021 x hcard hno, List.forall_append.mpr ⟨satisfies022 x hcard hno, List.forall_append.mpr ⟨satisfies023 x hcard hno, List.forall_append.mpr ⟨satisfies024 x hcard hno, List.forall_append.mpr ⟨satisfies025 x hcard hno, List.forall_append.mpr ⟨satisfies026 x hcard hno, List.forall_append.mpr ⟨satisfies027 x hcard hno, List.forall_append.mpr ⟨satisfies028 x hcard hno, List.forall_append.mpr ⟨satisfies029 x hcard hno, List.forall_append.mpr ⟨satisfies030 x hcard hno, List.forall_append.mpr ⟨satisfies031 x hcard hno, satisfies032 x hcard hno⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end C3Span50Semantic
