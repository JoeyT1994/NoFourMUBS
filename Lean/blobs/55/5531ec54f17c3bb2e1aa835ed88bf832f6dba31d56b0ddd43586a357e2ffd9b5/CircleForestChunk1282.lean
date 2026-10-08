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
def state_1608213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
def hex_1608213 : String := "4342444140074307070807074244080706"
theorem cover_1608213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1608213)
  decide +kernel
#print axioms cover_1608213

def state_1608231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 58 else 49)))
def hex_1608231 : String := "42444140434206094244084107070A0A4043420644410707074208440807430642060A41404307070A40430707430642060A44410A0A410A0A"
theorem cover_1608231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1608231)
  decide +kernel
#print axioms cover_1608231

def state_1608290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 59 else 98)))
def hex_1608290 : String := "414043420805420805434244410A08410A4008060A4244084140080A080A400843420844410A08410A40070A420844084140050A08"
theorem cover_1608290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1608290)
  decide +kernel
#print axioms cover_1608290

def state_1608343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 59 else 99)))
def hex_1608343 : String := "4140430707434244410A40070A410A40070A0A42444140070A084107070A4043070743424408410707444107070742084441070707"
theorem cover_1608343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1608343)
  decide +kernel
#print axioms cover_1608343

def state_1608396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 55 else (if j.val < 4 then 59 else 49)))
def hex_1608396 : String := "44410540050A410A40070A"
theorem cover_1608396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1608396)
  decide +kernel
#print axioms cover_1608396

def state_1608408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
def hex_1608408 : String := "43420807420807"
theorem cover_1608408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1608408)
  decide +kernel
#print axioms cover_1608408

def state_1608417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 45) else (if j.val < 3 then 54 else (if j.val < 4 then 58 else 49)))
def hex_1608417 : String := "44414008430642064406410606400806414007430642054441070607400705"
theorem cover_1608417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1608417)
  decide +kernel
#print axioms cover_1608417
end Mub6.Numerical.CircleFullD0.Forest
