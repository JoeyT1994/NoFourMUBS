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
def state_1308283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 46)))
def hex_1308283 : String := "434244084108054441404305060505414043054408420841080605404305060542064406410806"
theorem cover_1308283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1308283)
  decide +kernel
#print axioms cover_1308283

def state_1308322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 46)))
def hex_1308322 : String := "400606"
theorem cover_1308322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1308322)
  decide +kernel
#print axioms cover_1308322

def state_1308327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 47)))
def hex_1308327 : String := "434442410A400A0A414043070A43070A4043444241070607080643444205410705424107050706420A4107400843070A44420A410A060A"
theorem cover_1308327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1308327)
  decide +kernel
#print axioms cover_1308327

def state_1308382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 47)))
def hex_1308382 : String := "434442410A05414043050A05404305440642050605420A414007054043050A0544420A410A06420A410A0A"
theorem cover_1308382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1308382)
  decide +kernel
#print axioms cover_1308382

def state_1308425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 47)))
def hex_1308425 : String := "4043444206414006060642090806430506"
theorem cover_1308425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1308425)
  decide +kernel
#print axioms cover_1308425

def state_1308442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 31 else 23)))
def hex_1308442 : String := "420644064140050A06"
theorem cover_1308442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1308442)
  decide +kernel
#print axioms cover_1308442

def state_1308451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 23)))
def hex_1308451 : String := "43424405410805444140430508050541404305444208410805420841080A050542084406410806"
theorem cover_1308451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1308451)
  decide +kernel
#print axioms cover_1308451

def state_1308491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 22)))
def hex_1308491 : String := "4043410942060606434142440540430506050942050A410906"
theorem cover_1308491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1308491)
  decide +kernel
#print axioms cover_1308491
end Mub6.Numerical.CircleFullD0.Forest
