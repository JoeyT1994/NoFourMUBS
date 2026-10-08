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
def state_1009467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 47)))
def hex_1009467 : String := "4341054205444043074105420507430505400705414205444007050542054440434105420544400709074105420544400A0940070543050540430741050505"
theorem cover_1009467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009467 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1009467)
  decide +kernel
#print axioms cover_1009467

def state_1009530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
def hex_1009530 : String := "444341050941420506094305410505"
theorem cover_1009530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009530 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1009530)
  decide +kernel
#print axioms cover_1009530

def state_1009546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
def hex_1009546 : String := "40440643060609"
theorem cover_1009546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009546 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1009546)
  decide +kernel
#print axioms cover_1009546

def state_1009555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
def hex_1009555 : String := "430941420940090909"
theorem cover_1009555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1009555)
  decide +kernel
#print axioms cover_1009555

def state_1009565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 47)))
def hex_1009565 : String := "414244400605054440080940430841420507084305410505420608"
theorem cover_1009565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1009565)
  decide +kernel
#print axioms cover_1009565

def state_1009592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 47)))
def hex_1009592 : String := "41424440060540060544404341420608060A0940434142054440070507420644084006080A4341050941050942064409400609"
theorem cover_1009592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1009592)
  decide +kernel
#print axioms cover_1009592

def state_1009643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
def hex_1009643 : String := "440943094142050909"
theorem cover_1009643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1009643)
  decide +kernel
#print axioms cover_1009643

def state_1009654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 11)))
def hex_1009654 : String := "4408410708"
theorem cover_1009654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1009654)
  decide +kernel
#print axioms cover_1009654

def state_1009659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 11)))
def hex_1009659 : String := "444142400843084408414240084408430741070808080808414244400743410708410742440840074307410708080707424408400843084142440807070808"
theorem cover_1009659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1009659)
  decide +kernel
#print axioms cover_1009659
end Mub6.Numerical.CircleFullD0.Forest
