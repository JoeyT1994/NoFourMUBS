import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2256232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 108)))
def hex_2256232 : String := "404307410607434106420706414244064006430641060706420708"
theorem cover_2256232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256232 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2256232)
  decide +kernel
#print axioms cover_2256232

def state_2256259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 109)))
def hex_2256259 : String := "4007434142074406070741424440074307414207440607070744400943064106084007434142070907414244070709074207440707"
theorem cover_2256259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256259 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_2256259)
  decide +kernel
#print axioms cover_2256259

def state_2256312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
def hex_2256312 : String := "4207440707"
theorem cover_2256312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2256312)
  decide +kernel
#print axioms cover_2256312

def state_2256319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2256319 : String := "4244404307414207BE07434142440507054207054142444043070A43050808BE4207BE400743410807410807BE"
theorem cover_2256319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2256319)
  decide +kernel
#print axioms cover_2256319

def state_2256364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2256364 : String := "42440707444007430A420A41050840074307420741BE07"
theorem cover_2256364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2256364)
  decide +kernel
#print axioms cover_2256364

def state_2256391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 70 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 108)))
def hex_2256391 : String := "434142440707BE07414244400743414207BE0741094205BE4007430709BE4207BE"
theorem cover_2256391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2256391)
  decide +kernel
#print axioms cover_2256391

def state_2256424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 108)))
def hex_2256424 : String := "43414244404341080741094207BE0908BE424440070A07BE4142444043410909090909BE4244404307414205BE054341090A410905400709BE"
theorem cover_2256424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2256424)
  decide +kernel
#print axioms cover_2256424
end Mub6.Numerical.CircleFullD0.Forest
