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
def state_2285521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 31)))
def hex_2285521 : String := "41444243400606064340094107440706064206430A064442064340094144420609064406060642064340060606"
theorem cover_2285521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2285521)
  decide +kernel
#print axioms cover_2285521

def state_2285566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 31)))
def hex_2285566 : String := "414442434006060607420643400606064442064340414407064442064308060641074407060642064340060606"
theorem cover_2285566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2285566)
  decide +kernel
#print axioms cover_2285566

def state_2285613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 30)))
def hex_2285613 : String := "434041440A420743070A0A0A404144060505410606"
theorem cover_2285613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285613 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2285613)
  decide +kernel
#print axioms cover_2285613

def state_2285634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 30)))
def hex_2285634 : String := "4340414408424340070A4041440805050A080841440842430A400A0A430808084041440842434005050508084144084243400606060808"
theorem cover_2285634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2285634)
  decide +kernel
#print axioms cover_2285634

def state_2285690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 31)))
def hex_2285690 : String := "43400741444206430A0642054305050506"
theorem cover_2285690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2285690)
  decide +kernel
#print axioms cover_2285690

def state_2285709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
def hex_2285709 : String := "4144424307400505430740074109080707"
theorem cover_2285709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2285709)
  decide +kernel
#print axioms cover_2285709

def state_2285729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 58) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 62)))
def hex_2285729 : String := "434041440A07070A40414442050A050541440A0605"
theorem cover_2285729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_2285729)
  decide +kernel
#print axioms cover_2285729
end Mub6.Numerical.CircleFullD0.Forest
