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
def state_1331573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 24)))
def hex_1331573 : String := "4142054440430941420509054306414205060540430941420544090A0543064142054443064041420506050643064041420544060705060505"
theorem cover_1331573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 57) (hex := hex_1331573)
  decide +kernel
#print axioms cover_1331573

def state_1331630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 25)))
def hex_1331630 : String := "414205400A430A4441420543074440050707050A05"
theorem cover_1331630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1331630)
  decide +kernel
#print axioms cover_1331630

def state_1331654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 28 else (if j.val < 4 then 23 else 24)))
def hex_1331654 : String := "05"
theorem cover_1331654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1331654)
  decide +kernel
#print axioms cover_1331654

def state_1331657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 48)))
def hex_1331657 : String := "40054142054443060743404142050605064005410A0505"
theorem cover_1331657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331657 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1331657)
  decide +kernel
#print axioms cover_1331657

def state_1331681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 49)))
def hex_1331681 : String := "05"
theorem cover_1331681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1331681)
  decide +kernel
#print axioms cover_1331681

def state_1331683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 49)))
def hex_1331683 : String := "4205434440414205444306050505414205060540054142054306440607054440054142054344064005060A0540054142054344400506400507444005090505"
theorem cover_1331683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331683 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1331683)
  decide +kernel
#print axioms cover_1331683

def state_1331746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 49)))
def hex_1331746 : String := "05"
theorem cover_1331746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331746 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1331746)
  decide +kernel
#print axioms cover_1331746

def state_1331747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 29 else (if j.val < 4 then 47 else 24)))
def hex_1331747 : String := "444005074005414205434440050A0544050505"
theorem cover_1331747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1331747)
  decide +kernel
#print axioms cover_1331747

def state_1331766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
def hex_1331766 : String := "05"
theorem cover_1331766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1331766)
  decide +kernel
#print axioms cover_1331766

def state_1331767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 25)))
def hex_1331767 : String := "4142054340054441420543444005410705050505050505"
theorem cover_1331767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331767 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1331767)
  decide +kernel
#print axioms cover_1331767
end Mub6.Numerical.CircleFullD0.Forest
