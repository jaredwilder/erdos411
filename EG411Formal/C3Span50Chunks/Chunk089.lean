import EG411Formal.C3Span50Chunks.Chunk088

open Mathlib.Tactic.Sat.Incremental

namespace C3Span50Certificate
incremental_lrat_final unsat C3Span50Clause.ctx
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/sat-certificate/c3-span50.cnf")
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/chunked-lrat/data/chunk-089.seed.lrat")
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/chunked-lrat/data/chunk-089.exports.lrat")
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/chunked-lrat/data/chunk-089.lrat")
#check unsat
#print axioms unsat
end C3Span50Certificate
