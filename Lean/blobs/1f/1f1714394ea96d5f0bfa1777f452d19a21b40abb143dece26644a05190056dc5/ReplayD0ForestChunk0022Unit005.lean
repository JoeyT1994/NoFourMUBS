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
def state_1509306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
def hex_1509306 : String := "40414243444006410505404143060909414344420506424041434207060909414342054405404109060A050A40064143064406424006050606440542054009414344054205050505434406420A060A4405404109050543440640064142430644064006410906060644054009414244054309050909424309094306094142434405404143440A420A40414344420506424041880A0A4006084405420540414306050505430A0A41434405420508050A44054205050A41430A050A054344400605404142434406404143064244050606060844054041420543060542050641420543070505430644064006074243080A0641424308050808440540414205440543400905050505420A4344064108080A"
theorem cover_1509306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509306 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 271) (hex := hex_1509306)
  decide +kernel
#print axioms cover_1509306


end Mub6.Numerical.CircleFullD0.Forest
