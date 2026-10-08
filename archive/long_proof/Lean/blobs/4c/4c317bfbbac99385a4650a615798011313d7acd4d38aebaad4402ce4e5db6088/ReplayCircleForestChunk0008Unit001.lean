import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_47699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_47699 : String := "4344400A4108090844400541054243440A0944400A414342060505430942400A4106090A400541050943094440054105090505"
theorem cover_47699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 51) (hex := hex_47699)
  decide +kernel
#print axioms cover_47699

def state_47750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_47750 : String := "42434441400A42050A0A41444006420543050640080806444143400642054405064042064443060506420544054306410505060643440A410942440A0909444142430A400A44430A054341424006050A0A414240440543060805400A4405430A420508420508430A400A440A0A0A414243440A094440430A4142060706434142060A064142444006434006054041420544050605054006430644400641420543064440060506050644400A430A42400A414405430942400A0509050A40074309424440070907094206440A07400743094441424006430607070707430944400A42430941440A090A090942060A"
theorem cover_47750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 237) (hex := hex_47750)
  decide +kernel
#print axioms cover_47750


end Mub6.Numerical.CircleFullPrototype.Forest
