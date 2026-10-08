import FormalCore
import Mathlib.Data.Nat.Sqrt
import Mathlib.Data.Int.DivMod
#print Int.tdiv
#print Int.tmod
run_cmd do
  for (name, _) in (← Lean.getEnv).constants.toList do
    let s := name.toString
    if s.startsWith "Int." && ((s.splitOn "tdiv").length > 1 || (s.splitOn "tmod").length > 1) then
      Lean.logInfo m!"{name}"
