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
def state_1644698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 81)))
def hex_1644698 : String := "42414340444241430740070707070744420A410A0505A04340444205070505A041434007440707A043400705A0"
theorem cover_1644698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644698 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1644698)
  decide +kernel
#print axioms cover_1644698

def state_1644744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 102 else 40)))
def hex_1644744 : String := "4044070705"
theorem cover_1644744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1644744)
  decide +kernel
#print axioms cover_1644744

def state_1644749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 40)))
def hex_1644749 : String := "4044424143400607060606424143074006A043050606444241434044420507050509430509414340060540060943050642414305A005414305A005"
theorem cover_1644749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644749 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1644749)
  decide +kernel
#print axioms cover_1644749

def state_1644809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
def hex_1644809 : String := "434007074044060644424143074006440642414307060606430706064241430740074442410707060743074006440607410706"
theorem cover_1644809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1644809)
  decide +kernel
#print axioms cover_1644809

def state_1644860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
def hex_1644860 : String := "43074006440642414307060606"
theorem cover_1644860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644860 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1644860)
  decide +kernel
#print axioms cover_1644860

def state_1644875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 41)))
def hex_1644875 : String := "4340074405054044424143074007A043074007A04107070944424143400705A04305A0414307A04305A042414305A00508"
theorem cover_1644875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644875 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1644875)
  decide +kernel
#print axioms cover_1644875

def state_1644924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 41)))
def hex_1644924 : String := "43054044424143054007050507420507440505"
theorem cover_1644924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1644924)
  decide +kernel
#print axioms cover_1644924
end Mub6.Numerical.CircleFullD0.Forest
