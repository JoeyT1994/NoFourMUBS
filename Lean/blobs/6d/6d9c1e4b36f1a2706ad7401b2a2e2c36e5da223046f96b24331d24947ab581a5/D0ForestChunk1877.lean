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
def state_2323486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
def hex_2323486 : String := "4143400644420606420606064340444208080844424143400844090806430907410A0908400644420741060808"
theorem cover_2323486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323486 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2323486)
  decide +kernel
#print axioms cover_2323486

def state_2323531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 45)))
def hex_2323531 : String := "420808"
theorem cover_2323531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323531 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2323531)
  decide +kernel
#print axioms cover_2323531

def state_2323541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 84 else (if j.val < 4 then 62 else 88)))
def hex_2323541 : String := "4143400644060606434044074207080A40060A"
theorem cover_2323541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323541 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2323541)
  decide +kernel
#print axioms cover_2323541

def state_2323561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 112) else (if j.val < 3 then 85 else (if j.val < 4 then 62 else 88)))
def hex_2323561 : String := "43400644050606"
theorem cover_2323561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2323561)
  decide +kernel
#print axioms cover_2323561

def state_2323569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 124 else 88)))
def hex_2323569 : String := "404442060642060644424143400605060A41064340444205054206050540064405064241430A060A410643404442060608444205054208084006440608"
theorem cover_2323569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323569 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2323569)
  decide +kernel
#print axioms cover_2323569

def state_2323630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 125 else 88)))
def hex_2323630 : String := "400644420606420606"
theorem cover_2323630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2323630)
  decide +kernel
#print axioms cover_2323630

def state_2323639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 89)))
def hex_2323639 : String := "4241434006440A08064340080A084143400644060606434008444208080808"
theorem cover_2323639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2323639)
  decide +kernel
#print axioms cover_2323639

def state_2323670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 44)))
def hex_2323670 : String := "44420A414305400605434044420A05420A41050A0A40440A0A0A420A41430909434044420A41070A4208070A40440A0809"
theorem cover_2323670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2323670)
  decide +kernel
#print axioms cover_2323670

def state_2323719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 63 else 44)))
def hex_2323719 : String := "404442060642060644420A41060A420909"
theorem cover_2323719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_2323719)
  decide +kernel
#print axioms cover_2323719
end Mub6.Numerical.CircleFullD0.Forest
