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
def state_2328506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_2328506 : String := "4241094305054143440A090A43444240054344410A050505400643440641064205060A420540054341090505440A05"
theorem cover_2328506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328506 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_2328506)
  decide +kernel
#print axioms cover_2328506

def state_2328554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
def hex_2328554 : String := "4143090A434440420543444109050505420843084441084005080909444005420544410A050505"
theorem cover_2328554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328554 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_2328554)
  decide +kernel
#print axioms cover_2328554

def state_2328594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
def hex_2328594 : String := "4344400909090A"
theorem cover_2328594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2328594)
  decide +kernel
#print axioms cover_2328594

def state_2328605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 24)))
def hex_2328605 : String := "434441094042054344070505424344070505434441400A0940054205CF41090544410A050509440A05"
theorem cover_2328605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_2328605)
  decide +kernel
#print axioms cover_2328605

def state_2328649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
def hex_2328649 : String := "0A"
theorem cover_2328649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2328649)
  decide +kernel
#print axioms cover_2328649

def state_2328651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 48 else 48)))
def hex_2328651 : String := "404344064106050A4344410A424043444106050505CF4006CF410942054043444105050505434441094205400508090A0A"
theorem cover_2328651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 49) (hex := hex_2328651)
  decide +kernel
#print axioms cover_2328651

def state_2328700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 48 else 48)))
def hex_2328700 : String := "40064344410608410642400643444106084107080A060A"
theorem cover_2328700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328700 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_2328700)
  decide +kernel
#print axioms cover_2328700

def state_2328723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 49)))
def hex_2328723 : String := "4109424005094043444106420506050A4344410742400509400607090A"
theorem cover_2328723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328723 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_2328723)
  decide +kernel
#print axioms cover_2328723

def state_2328752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 24)))
def hex_2328752 : String := "0A"
theorem cover_2328752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328752 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2328752)
  decide +kernel
#print axioms cover_2328752

def state_2328757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 48)))
def hex_2328757 : String := "09"
theorem cover_2328757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328757 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2328757)
  decide +kernel
#print axioms cover_2328757
end Mub6.Numerical.CircleFullD0.Forest
