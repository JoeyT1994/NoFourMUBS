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
def state_1461591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 32)))
def hex_1461591 : String := "414243444041050A05094440E70A4041090A094305440508420A430844404108080A08"
theorem cover_1461591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461591 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1461591)
  decide +kernel
#print axioms cover_1461591

def state_1461626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 33)))
def hex_1461626 : String := "40414244430640064108080608420A08414209080A"
theorem cover_1461626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1461626)
  decide +kernel
#print axioms cover_1461626

def state_1461647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 45 else (if j.val < 4 then 31 else 16)))
def hex_1461647 : String := "08"
theorem cover_1461647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461647 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461647)
  decide +kernel
#print axioms cover_1461647

def state_1461648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
def hex_1461648 : String := "42430A444140420A4307090A070A08"
theorem cover_1461648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461648 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1461648)
  decide +kernel
#print axioms cover_1461648

def state_1461663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 16)))
def hex_1461663 : String := "4142430A4440414209050A0A0A08420A08"
theorem cover_1461663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1461663)
  decide +kernel
#print axioms cover_1461663

def state_1461680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 17)))
def hex_1461680 : String := "404142444308400808060808410808"
theorem cover_1461680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1461680)
  decide +kernel
#print axioms cover_1461680

def state_1461695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 8)))
def hex_1461695 : String := "08"
theorem cover_1461695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461695 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1461695)
  decide +kernel
#print axioms cover_1461695

def state_1461696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
def hex_1461696 : String := "42430A4441404207070A070A08"
theorem cover_1461696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461696 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1461696)
  decide +kernel
#print axioms cover_1461696

def state_1461709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
def hex_1461709 : String := "4142430A4440414209050A0A0A08420A08"
theorem cover_1461709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1461709)
  decide +kernel
#print axioms cover_1461709

def state_1461726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 9)))
def hex_1461726 : String := "404142440806080808"
theorem cover_1461726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461726 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1461726)
  decide +kernel
#print axioms cover_1461726

def state_1461735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_1461735 : String := "4041420906064109420944430640060806"
theorem cover_1461735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1461735)
  decide +kernel
#print axioms cover_1461735

def state_1461753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1461753 : String := "41424344434406070807084344060A4409084243440607440908430644064108420806"
theorem cover_1461753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1461753)
  decide +kernel
#print axioms cover_1461753

def state_1461793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1461793 : String := "434441420606064142070A420706440908"
theorem cover_1461793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1461793)
  decide +kernel
#print axioms cover_1461793

def state_1461814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
def hex_1461814 : String := "40430705430705"
theorem cover_1461814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1461814)
  decide +kernel
#print axioms cover_1461814

def state_1461822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
def hex_1461822 : String := "43064406420606"
theorem cover_1461822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1461822)
  decide +kernel
#print axioms cover_1461822

def state_1461830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
def hex_1461830 : String := "440642414006430644064206060606"
theorem cover_1461830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461830 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1461830)
  decide +kernel
#print axioms cover_1461830
end Mub6.Numerical.CircleFullD0.Forest
