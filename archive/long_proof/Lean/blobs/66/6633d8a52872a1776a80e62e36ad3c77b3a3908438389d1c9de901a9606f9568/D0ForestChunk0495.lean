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
def state_1307553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 89) else (if j.val < 3 then 98 else (if j.val < 4 then 59 else 92)))
def hex_1307553 : String := "43404244414305060541430508050805400606"
theorem cover_1307553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307553 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1307553)
  decide +kernel
#print axioms cover_1307553

def state_1307572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 44) else (if j.val < 3 then 98 else (if j.val < 4 then 59 else 93)))
def hex_1307572 : String := "4143074007420A07434008054042440608084244410A060944414307060608"
theorem cover_1307572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1307572)
  decide +kernel
#print axioms cover_1307572

def state_1307603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 44) else (if j.val < 3 then 99 else (if j.val < 4 then 59 else 46)))
def hex_1307603 : String := "4441430740074244070707434008054008420606410708"
theorem cover_1307603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1307603)
  decide +kernel
#print axioms cover_1307603

def state_1307626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 45) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 46)))
def hex_1307626 : String := "4308400842444143050606414308060608"
theorem cover_1307626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1307626)
  decide +kernel
#print axioms cover_1307626

def state_1307643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 47)))
def hex_1307643 : String := "41430740074442410709070708"
theorem cover_1307643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1307643)
  decide +kernel
#print axioms cover_1307643

def state_1307656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 11)))
def hex_1307656 : String := "444340080A4041424409080708414244094340070A09090A430740084441424307400744424107080707070808"
theorem cover_1307656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307656 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1307656)
  decide +kernel
#print axioms cover_1307656

def state_1307701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
def hex_1307701 : String := "42444340414209080805404142440643080644060842090641424406430506440643050606430840084142090808440A08"
theorem cover_1307701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1307701)
  decide +kernel
#print axioms cover_1307701

def state_1307753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 22)))
def hex_1307753 : String := "400643420641440640064306060606"
theorem cover_1307753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1307753)
  decide +kernel
#print axioms cover_1307753

def state_1307769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 23)))
def hex_1307769 : String := "43424405050505"
theorem cover_1307769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1307769)
  decide +kernel
#print axioms cover_1307769

def state_1307778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 30 else 23)))
def hex_1307778 : String := "4441400A43420A44410A060A0606410A400606"
theorem cover_1307778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307778 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1307778)
  decide +kernel
#print axioms cover_1307778
end Mub6.Numerical.CircleFullD0.Forest
