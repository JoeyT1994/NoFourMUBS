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
def state_1667472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 31)))
def hex_1667472 : String := "424341440A080A0743414405400542434106440608050544400542070540420A0542434144074207400807070743414405400542090544400507F20505"
theorem cover_1667472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667472 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1667472)
  decide +kernel
#print axioms cover_1667472

def state_1667533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 15)))
def hex_1667533 : String := "05"
theorem cover_1667533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667533 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1667533)
  decide +kernel
#print axioms cover_1667533

def state_1667536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
def hex_1667536 : String := "44054005430705"
theorem cover_1667536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1667536)
  decide +kernel
#print axioms cover_1667536

def state_1667544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 14)))
def hex_1667544 : String := "400543424408090505"
theorem cover_1667544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1667544)
  decide +kernel
#print axioms cover_1667544

def state_1667554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 15)))
def hex_1667554 : String := "430705"
theorem cover_1667554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667554 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1667554)
  decide +kernel
#print axioms cover_1667554

def state_1667558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 15)))
def hex_1667558 : String := "42410744090707"
theorem cover_1667558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1667558)
  decide +kernel
#print axioms cover_1667558

def state_1667567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 15)))
def hex_1667567 : String := "44054005430705"
theorem cover_1667567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667567 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1667567)
  decide +kernel
#print axioms cover_1667567

def state_1667575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 30)))
def hex_1667575 : String := "40054342440841430605080505"
theorem cover_1667575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1667575)
  decide +kernel
#print axioms cover_1667575

def state_1667589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 31)))
def hex_1667589 : String := "430705"
theorem cover_1667589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667589 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1667589)
  decide +kernel
#print axioms cover_1667589

def state_1667592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 25 else 31)))
def hex_1667592 : String := "4342410744090707424144054005430705444005434244064106080505404307054342410A44430740070807074241440540050A444005430805F20505"
theorem cover_1667592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1667592)
  decide +kernel
#print axioms cover_1667592

def state_1667653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 15)))
def hex_1667653 : String := "05"
theorem cover_1667653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667653 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1667653)
  decide +kernel
#print axioms cover_1667653

def state_1667654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 7)))
def hex_1667654 : String := "05"
theorem cover_1667654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1667654)
  decide +kernel
#print axioms cover_1667654

def state_1667658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_1667658 : String := "06"
theorem cover_1667658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667658 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1667658)
  decide +kernel
#print axioms cover_1667658

def state_1667660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 14)))
def hex_1667660 : String := "06"
theorem cover_1667660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1667660)
  decide +kernel
#print axioms cover_1667660

def state_1667662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 15)))
def hex_1667662 : String := "4340410605054041064406420543050706"
theorem cover_1667662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667662 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1667662)
  decide +kernel
#print axioms cover_1667662

def state_1667680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
def hex_1667680 : String := "4041064406430542050A06"
theorem cover_1667680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1667680)
  decide +kernel
#print axioms cover_1667680

def state_1667693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
def hex_1667693 : String := "4406420606"
theorem cover_1667693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1667693)
  decide +kernel
#print axioms cover_1667693

def state_1667699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 30)))
def hex_1667699 : String := "420606"
theorem cover_1667699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1667699)
  decide +kernel
#print axioms cover_1667699

def state_1667703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 31) else (if j.val < 3 then 50 else (if j.val < 4 then 25 else 31)))
def hex_1667703 : String := "4340410605054041064406420543050706"
theorem cover_1667703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667703 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1667703)
  decide +kernel
#print axioms cover_1667703
end Mub6.Numerical.CircleFullD0.Forest
