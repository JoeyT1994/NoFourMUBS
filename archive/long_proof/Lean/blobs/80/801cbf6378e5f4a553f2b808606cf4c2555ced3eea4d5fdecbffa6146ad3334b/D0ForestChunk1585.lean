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
def state_2253703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 102) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
def hex_2253703 : String := "42444043064106420A06434106420A060A4043410A4244090709410A420A09430A0A440640090A"
theorem cover_2253703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253703 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2253703)
  decide +kernel
#print axioms cover_2253703

def state_2253742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 103) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
def hex_2253742 : String := "42444043094109094341424406090909414244090A090940430941420509054341424440070A07090941424405050942050909"
theorem cover_2253742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2253742)
  decide +kernel
#print axioms cover_2253742

def state_2253793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 93 else 55)))
def hex_2253793 : String := "4142440A0A0A4244404341420508050543410A42050805400543410A0505440809"
theorem cover_2253793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2253793)
  decide +kernel
#print axioms cover_2253793

def state_2253826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 27)))
def hex_2253826 : String := "4406400943094241090808"
theorem cover_2253826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2253826)
  decide +kernel
#print axioms cover_2253826

def state_2253837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 47 else 27)))
def hex_2253837 : String := "414244060A064244400843410608084043414244050544060A420508410A0543410A420508410A0508"
theorem cover_2253837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2253837)
  decide +kernel
#print axioms cover_2253837

def state_2253880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 27)))
def hex_2253880 : String := "4244060A07"
theorem cover_2253880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253880 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2253880)
  decide +kernel
#print axioms cover_2253880

def state_2253887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 54)))
def hex_2253887 : String := "4043410642440640430641060843410642440640060A0641064244060A060641064244064043410608080A064341074244064043410642BE060A070707"
theorem cover_2253887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253887 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_2253887)
  decide +kernel
#print axioms cover_2253887

def state_2253951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 102) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
def hex_2253951 : String := "42440A0A0A"
theorem cover_2253951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253951 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2253951)
  decide +kernel
#print axioms cover_2253951
end Mub6.Numerical.CircleFullD0.Forest
