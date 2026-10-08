import ProfilerCore
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.Performance02
open Sample
theorem hex_decoded : (PackedHex.readWords count encoded.toList).isSome = true := by
  decide +kernel
#print axioms hex_decoded
end Mub6.Numerical.IntegerIntervals.Performance02
