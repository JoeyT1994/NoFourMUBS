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
def state_1474456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 15)))
def hex_1474456 : String := "40430A410A424440430A410A42444005430507050543410942090A410942094443400509090540050944400A0A0543410942090A410942094443400A070909"
theorem cover_1474456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1474456)
  decide +kernel
#print axioms cover_1474456

def state_1474525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 20 else 14)))
def hex_1474525 : String := "07"
theorem cover_1474525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1474525)
  decide +kernel
#print axioms cover_1474525

def state_1474528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
def hex_1474528 : String := "40414307440842404143074442860842864041070707430744084240418608070841070740414307080807430744084240414307080807084143070807"
theorem cover_1474528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1474528)
  decide +kernel
#print axioms cover_1474528

def state_1474589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 21 else 28)))
def hex_1474589 : String := "40414307080807"
theorem cover_1474589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474589 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1474589)
  decide +kernel
#print axioms cover_1474589

def state_1474599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 29)))
def hex_1474599 : String := "4307444240414307444286070A4307444240410707070742400506050740410A07074240410A0506400507"
theorem cover_1474599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474599 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1474599)
  decide +kernel
#print axioms cover_1474599

def state_1474642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 29)))
def hex_1474642 : String := "430744424041430544424005070505090740410705074240050605"
theorem cover_1474642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1474642)
  decide +kernel
#print axioms cover_1474642

def state_1474669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 29)))
def hex_1474669 : String := "07"
theorem cover_1474669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1474669)
  decide +kernel
#print axioms cover_1474669

def state_1474670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 21 else 29)))
def hex_1474670 : String := "40414307440707430744070507"
theorem cover_1474670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1474670)
  decide +kernel
#print axioms cover_1474670

def state_1474683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
def hex_1474683 : String := "4307444240414307080808084240414305090507400907"
theorem cover_1474683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474683 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1474683)
  decide +kernel
#print axioms cover_1474683

def state_1474706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
def hex_1474706 : String := "410707"
theorem cover_1474706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474706 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1474706)
  decide +kernel
#print axioms cover_1474706
end Mub6.Numerical.CircleFullD0.Forest
