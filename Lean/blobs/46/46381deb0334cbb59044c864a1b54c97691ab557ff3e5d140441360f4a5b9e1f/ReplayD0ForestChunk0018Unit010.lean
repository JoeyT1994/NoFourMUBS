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
def state_1474520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 7)))
def hex_1474520 : String := "424440414307444240414307440842404143074442860842864041070707430744084240418608070841070740414307080807430744084240414307080807084143070807404143070808074240414307444240414307444286070A4307444240410707070742400506050740410A07074240410A05064005074307444240414305444240050705050907404107050742400506050740414307440707430744070507430744424041430708080808424041430509050740090741070740414307424440410A430505070644400A070A43054244400506050507444041430742440807074307080740410A0707"
theorem cover_1474520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 237) (hex := hex_1474520)
  decide +kernel
#print axioms cover_1474520
end Mub6.Numerical.CircleFullD0.Forest
