import FastPacked
import SampleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.Performance02
open Sample
open Mub6.Numerical.IntegerIntervals.TaoBundle
theorem fast_checked : checkFastHexPacked scale carrier boxes root fuel count encoded = true := by
  decide +kernel
theorem fast_covered : CoveredBy scale carrier boxes root :=
  checkFastHexPacked_sound (by decide) carrier boxes root fuel count encoded fast_checked
#print axioms fast_checked
#print axioms fast_covered
end Mub6.Numerical.IntegerIntervals.Performance02
