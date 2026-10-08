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
def state_2293607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 93)))
def hex_2293607 : String := "41404342444108400508090942090943080940434205444140050905050543424408064441084043060506410706424441400509050544410940050905"
theorem cover_2293607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_2293607)
  decide +kernel
#print axioms cover_2293607

def state_2293670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 102) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
def hex_2293670 : String := "404342444106400608090706430709"
theorem cover_2293670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2293670)
  decide +kernel
#print axioms cover_2293670

def state_2293687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 108 else 92)))
def hex_2293687 : String := "424441400A4308424408090940434244410A0A0A0A0AC441400A4308094005434244080544C409420544C40544410A400AC4410A400A43070A"
theorem cover_2293687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2293687)
  decide +kernel
#print axioms cover_2293687

def state_2293744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 109 else 92)))
def hex_2293744 : String := "424441064005C4410A0544060A"
theorem cover_2293744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2293744)
  decide +kernel
#print axioms cover_2293744

def state_2293757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
def hex_2293757 : String := "4342444108C441074043084244C4090708444107C4074244414043090609C44109404342090909430909444107C44107400907"
theorem cover_2293757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2293757)
  decide +kernel
#print axioms cover_2293757

def state_2293808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 93)))
def hex_2293808 : String := "41404307090740434244410905054441074005070942050A43424441074009070707424441094005090907"
theorem cover_2293808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293808 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2293808)
  decide +kernel
#print axioms cover_2293808
end Mub6.Numerical.CircleFullD0.Forest
