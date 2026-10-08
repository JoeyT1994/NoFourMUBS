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
def state_1016612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 44)))
def hex_1016612 : String := "414340444205410543404442050905080505080543404442060A0A444207414340440808080843400A0707420841080A400A44420541050A05"
theorem cover_1016612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016612 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1016612)
  decide +kernel
#print axioms cover_1016612

def state_1016670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
def hex_1016670 : String := "4340444241074340074409074007440905070744424105434044090808080942080740444205070505"
theorem cover_1016670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1016670)
  decide +kernel
#print axioms cover_1016670

def state_1016715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
def hex_1016715 : String := "41434044420A41070A0A44424143400A4409420809400A4409080A41094305400A44420A050A420A41070A400A44420A41090A420A0A43400A44420A050A0A"
theorem cover_1016715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016715 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1016715)
  decide +kernel
#print axioms cover_1016715

def state_1016778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
def hex_1016778 : String := "4143400744424107050707400744424107434007440907400744090707074305400A44424143050A0505420A07"
theorem cover_1016778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016778 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1016778)
  decide +kernel
#print axioms cover_1016778

def state_1016823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 89)))
def hex_1016823 : String := "420A41070A"
theorem cover_1016823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1016823)
  decide +kernel
#print axioms cover_1016823
end Mub6.Numerical.CircleFullD0.Forest
