import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_966769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_966769 : String := "424344404241090941444306050544430640064209410644430609060642410808410A4443084042080A08084006084440094209410543444042094105094207410508080509434440410606410A420A0A06444041420543060542434440054105420544430605050505434440064106444306420606060644400541054344050505054142430A050A424344404142050A42444340410542050508050544430A050A410A420A0A0A440505434440410A44430A420A0A0A0A0A44404105434442054041054307050A0505410A430A050540050A"
theorem cover_966769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 211) (hex := hex_966769)
  decide +kernel
#print axioms cover_966769
end Mub6.Numerical.CircleFullD0.Forest
