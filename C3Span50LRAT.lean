import Mathlib.Tactic.Sat.FromLRAT

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

lrat_proof c3Span50Unsat
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/sat-certificate/c3-span50.cnf")
  (include_str "C:/Users/jared/Local Sites/woocommerce-enterprise/oracle/state/apex-supersession-20260729/runs/APX-031/sat-certificate/c3-span50.trimmed.lrat")

#check c3Span50Unsat
#print axioms c3Span50Unsat
