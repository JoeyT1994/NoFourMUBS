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
def state_1494697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 29)))
def hex_1494697 : String := "41444240064341440642400608060641444240064306410806064240434109064109440609094006084406424006430841090606064240430A410A4244060A0643410A4244400A080A0A4142090A42444043410A064142090A42440640060906430909400A0944400643084108060A0A4406424043064142440640064306410A0606064341424440060840430541050643084108080842440640060806414244400643410806414244400608090842440640060806404341424440060905054244060506414244400607070A424406070643410942090841094244404309070909444006084043050909440640064308410A084244064043064142070606434142440840430607080608414244400643080740070944064006084244064007430707060606"
theorem cover_1494697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 293) (hex := hex_1494697)
  decide +kernel
#print axioms cover_1494697


end Mub6.Numerical.CircleFullD0.Forest
