import ProfilerCore
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.Performance02
open Sample
open Mub6.Numerical.IntegerIntervals.TaoBundle
theorem full_checked : PackedHex.checkHexPacked scale carrier boxes root fuel count encoded = true := by
  decide +kernel
#print axioms full_checked
end Mub6.Numerical.IntegerIntervals.Performance02
