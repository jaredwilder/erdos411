import EG411Formal.C3Span50Fine.Fine151

open Mathlib.Tactic.Sat.Incremental

namespace C3Span50Certificate
incremental_lrat_final unsat C3Span50Clause.ctx
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/sat-certificate/c3-span50.cnf")
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/chunked-lrat/fine-65000-2500/data/fine-152.seed.lrat")
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/chunked-lrat/fine-65000-2500/data/fine-152.exports.lrat")
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/chunked-lrat/fine-65000-2500/data/fine-152.lrat")
#check unsat
#print axioms unsat
end C3Span50Certificate
