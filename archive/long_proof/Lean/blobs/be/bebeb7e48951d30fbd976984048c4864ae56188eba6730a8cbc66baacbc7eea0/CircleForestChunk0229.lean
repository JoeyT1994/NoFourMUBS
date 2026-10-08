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
def state_76276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
def hex_76276 : String := "44404142094344084008410A420706084209434408070841420943060642094344064209430506084440410A07410A0707"
theorem cover_76276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_76276)
  decide +kernel
#print axioms cover_76276

def state_76327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 10)))
def hex_76327 : String := "4243404144064306060A0640414406424306060644064243050843050806430606"
theorem cover_76327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_76327)
  decide +kernel
#print axioms cover_76327

def state_76360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 11)))
def hex_76360 : String := "4243444041090505094440414243444007060744400706074309440609420707414243050606054007410905430944404106090609"
theorem cover_76360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_76360)
  decide +kernel
#print axioms cover_76360

def state_76414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 10)))
def hex_76414 : String := "4240080606"
theorem cover_76414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76414 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_76414)
  decide +kernel
#print axioms cover_76414

def state_76420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 11)))
def hex_76420 : String := "44404143424440070607440640070608430707414306064342444305060744064305064207064007414344420A06070A07"
theorem cover_76420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_76420)
  decide +kernel
#print axioms cover_76420

def state_76469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 11)))
def hex_76469 : String := "444041064342440807060806404143094207060741064309420706"
theorem cover_76469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_76469)
  decide +kernel
#print axioms cover_76469

def state_76496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_76496 : String := "4408404142050542070841420A44060A42440907440643420A440640070608"
theorem cover_76496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_76496)
  decide +kernel
#print axioms cover_76496
end Mub6.Numerical.CircleFullPrototype.Forest
