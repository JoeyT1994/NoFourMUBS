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
def state_982891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 40)))
def hex_982891 : String := "43410A44070A4144070A07"
theorem cover_982891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982891 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_982891)
  decide +kernel
#print axioms cover_982891

def state_982904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 41)))
def hex_982904 : String := "43414442054340410944090541050A4009050544420643400641440A05440606400641440605064205434041050605054144420540090505440605"
theorem cover_982904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982904 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_982904)
  decide +kernel
#print axioms cover_982904

def state_982963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 41)))
def hex_982963 : String := "43410544420540430A41050707054105440705"
theorem cover_982963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982963 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_982963)
  decide +kernel
#print axioms cover_982963

def state_982985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 104) else (if j.val < 3 then 33 else (if j.val < 4 then 100 else 41)))
def hex_982985 : String := "44424340090A40090943090942434007050909"
theorem cover_982985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982985 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_982985)
  decide +kernel
#print axioms cover_982985

def state_983004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 105) else (if j.val < 3 then 33 else (if j.val < 4 then 100 else 41)))
def hex_983004 : String := "44424340080A404144060906410A44060A430840080A4243404144090708410A0A40414409054406420543080641440A05440A054340080A404109080A"
theorem cover_983004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_983004)
  decide +kernel
#print axioms cover_983004

def state_983066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 104) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 41)))
def hex_983066 : String := "44424009090909"
theorem cover_983066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_983066)
  decide +kernel
#print axioms cover_983066

def state_983074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 105) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 82)))
def hex_983074 : String := "4240064341440A420609064144060606404341090641090643410A440A0A41094406420609"
theorem cover_983074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983074 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_983074)
  decide +kernel
#print axioms cover_983074
end Mub6.Numerical.CircleFullD0.Forest
