import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1618632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 95 else 32)))
def hex_1618632 : String := "424044D343410742080741424044D30944D34305410642050507424044D30944D30540070744D343410505414206400705420505400707"
theorem cover_1618632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1618632)
  decide +kernel
#print axioms cover_1618632

def state_1618687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 33)))
def hex_1618687 : String := "434142060742050741424044430641064206090606404407074407430606424044430941420909420909094443054106050540440709444307074305410705"
theorem cover_1618687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1618687)
  decide +kernel
#print axioms cover_1618687

def state_1618750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 16)))
def hex_1618750 : String := "44430A4142060A4240440A05050A43054106420505"
theorem cover_1618750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1618750)
  decide +kernel
#print axioms cover_1618750

def state_1618771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 16)))
def hex_1618771 : String := "400744074307410707"
theorem cover_1618771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1618771)
  decide +kernel
#print axioms cover_1618771

def state_1618780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 17)))
def hex_1618780 : String := "43414206074205074142064044070944060642404443094142060942400905400905094406054044430741070709444305414205074205054305410505"
theorem cover_1618780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1618780)
  decide +kernel
#print axioms cover_1618780

def state_1618841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
def hex_1618841 : String := "400744074307410707"
theorem cover_1618841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1618841)
  decide +kernel
#print axioms cover_1618841
end Mub6.Numerical.CircleFullD0.Forest
