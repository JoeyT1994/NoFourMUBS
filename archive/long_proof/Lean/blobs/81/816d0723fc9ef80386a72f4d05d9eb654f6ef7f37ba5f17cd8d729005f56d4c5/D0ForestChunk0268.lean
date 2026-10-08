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
def state_1001792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 176)))
def hex_1001792 : String := "43C642414044080708400A4443C60843C60841400744430607074044430A0A074443C6420A414007080A43C6420807"
theorem cover_1001792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1001792)
  decide +kernel
#print axioms cover_1001792

def state_1001839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 177)))
def hex_1001839 : String := "43424107400744430707070742410740070807"
theorem cover_1001839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1001839)
  decide +kernel
#print axioms cover_1001839

def state_1001858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 88)))
def hex_1001858 : String := "4107400744430742410740074443054241060505070707"
theorem cover_1001858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1001858)
  decide +kernel
#print axioms cover_1001858

def state_1001881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 89)))
def hex_1001881 : String := "430707"
theorem cover_1001881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1001881)
  decide +kernel
#print axioms cover_1001881

def state_1001885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
def hex_1001885 : String := "444341424007440507050541420A050A4341070841070A"
theorem cover_1001885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1001885)
  decide +kernel
#print axioms cover_1001885

def state_1001913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 104 else 88)))
def hex_1001913 : String := "44C64308410708"
theorem cover_1001913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1001913)
  decide +kernel
#print axioms cover_1001913

def state_1001921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 104 else 176)))
def hex_1001921 : String := "C6"
theorem cover_1001921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001921 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1001921)
  decide +kernel
#print axioms cover_1001921

def state_1001923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 208 else 177)))
def hex_1001923 : String := "414240074408060708"
theorem cover_1001923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001923 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1001923)
  decide +kernel
#print axioms cover_1001923

def state_1001932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 209 else 177)))
def hex_1001932 : String := "4142404443070707444341074240070805410742400A44090A400744050743070740074443050706424044080A44430841420905054308410A0908"
theorem cover_1001932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001932 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1001932)
  decide +kernel
#print axioms cover_1001932

def state_1001991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 104 else 88)))
def hex_1001991 : String := "40054405430505"
theorem cover_1001991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1001991)
  decide +kernel
#print axioms cover_1001991

def state_1001998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 88)))
def hex_1001998 : String := "4240080805"
theorem cover_1001998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1001998)
  decide +kernel
#print axioms cover_1001998

def state_1002006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
def hex_1002006 : String := "4443C60A0A"
theorem cover_1002006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1002006)
  decide +kernel
#print axioms cover_1002006

def state_1002012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 176)))
def hex_1002012 : String := "43C641420A400A4443C60A430A0A0A"
theorem cover_1002012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1002012)
  decide +kernel
#print axioms cover_1002012
end Mub6.Numerical.CircleFullD0.Forest
