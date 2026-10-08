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
def state_2569585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 56 else 93)))
def hex_2569585 : String := "40434244414009090A4109404307070A4441094009090942444140060907410940070944090943420A09420A09"
theorem cover_2569585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2569585)
  decide +kernel
#print axioms cover_2569585

def state_2569630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 57 else 46)))
def hex_2569630 : String := "42414440060A4043424106070606430A0A440A404307070A4144064006094440060A40434244064106070606430A08"
theorem cover_2569630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2569630)
  decide +kernel
#print axioms cover_2569630

def state_2569677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
def hex_2569677 : String := "43420A41050A420A41050A"
theorem cover_2569677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569677 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2569677)
  decide +kernel
#print axioms cover_2569677

def state_2569693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 94)))
def hex_2569693 : String := "4043424441084008080809424441400909404307070A4109404305050909430842440A41090A09"
theorem cover_2569693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2569693)
  decide +kernel
#print axioms cover_2569693

def state_2569732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 94)))
def hex_2569732 : String := "404342444140070A0741400506054441404308090940050A41090542444140070A074140050A0544414043070509074109054342060A420A0A"
theorem cover_2569732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2569732)
  decide +kernel
#print axioms cover_2569732

def state_2569789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 95)))
def hex_2569789 : String := "41404309094308094043420505054306420609"
theorem cover_2569789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_2569789)
  decide +kernel
#print axioms cover_2569789

def state_2569808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 56 else 47)))
def hex_2569808 : String := "44410940434244410940090909094244410940050909094309094109400909"
theorem cover_2569808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2569808)
  decide +kernel
#print axioms cover_2569808
end Mub6.Numerical.CircleFullD0.Forest
