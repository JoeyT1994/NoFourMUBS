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
def state_2297529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 47)))
def hex_2297529 : String := "4041434206444143060505050505414306420644404143060505060606"
theorem cover_2297529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_2297529)
  decide +kernel
#print axioms cover_2297529

def state_2297559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 23)))
def hex_2297559 : String := "444005414342074440074143060706400506050505"
theorem cover_2297559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297559 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_2297559)
  decide +kernel
#print axioms cover_2297559

def state_2297582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
def hex_2297582 : String := "414342054441400543050505050505"
theorem cover_2297582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2297582)
  decide +kernel
#print axioms cover_2297582

def state_2297602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
def hex_2297602 : String := "4143424407054441400543420744410805050505050505"
theorem cover_2297602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297602 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 23) (hex := hex_2297602)
  decide +kernel
#print axioms cover_2297602

def state_2297627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 108 else 92)))
def hex_2297627 : String := "420644404143064206444108064140050605060606"
theorem cover_2297627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297627 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_2297627)
  decide +kernel
#print axioms cover_2297627

def state_2297649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 68 else (if j.val < 4 then 109 else 92)))
def hex_2297649 : String := "444007414306070605"
theorem cover_2297649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2297649)
  decide +kernel
#print axioms cover_2297649

def state_2297659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 184)))
def hex_2297659 : String := "404143424407054441400543080505050505414342064440414306420608060606424440070A05444041434207C40505410A0A40054143060505430605"
theorem cover_2297659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2297659)
  decide +kernel
#print axioms cover_2297659

def state_2297720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 69 else (if j.val < 4 then 109 else 185)))
def hex_2297720 : String := "40054143060505"
theorem cover_2297720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297720 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2297720)
  decide +kernel
#print axioms cover_2297720

def state_2297727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 92)))
def hex_2297727 : String := "430605"
theorem cover_2297727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2297727)
  decide +kernel
#print axioms cover_2297727

def state_2297730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 93)))
def hex_2297730 : String := "40054143060505"
theorem cover_2297730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2297730)
  decide +kernel
#print axioms cover_2297730
end Mub6.Numerical.CircleFullD0.Forest
