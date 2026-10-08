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
def state_2259826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
def hex_2259826 : String := "43420741444007430742060A07074205414440430705060606"
theorem cover_2259826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2259826)
  decide +kernel
#print axioms cover_2259826

def state_2259853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2259853 : String := "4241400A440A0A0A4140440A430A420A0A4443050A430A420A41050A0A"
theorem cover_2259853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2259853)
  decide +kernel
#print axioms cover_2259853

def state_2259883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
def hex_2259883 : String := "414044430A060644430A0606400606"
theorem cover_2259883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2259883)
  decide +kernel
#print axioms cover_2259883

def state_2259900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 74 else 106) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
def hex_2259900 : String := "4443420A4144050A084241440A06064144074008070843424106064140440A06440A060A42064140060606"
theorem cover_2259900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 43) (hex := hex_2259900)
  decide +kernel
#print axioms cover_2259900

def state_2259943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 75 else 106) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
def hex_2259943 : String := "4443420A41050A4241070641074008074342064140440706070A4206410606"
theorem cover_2259943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2259943)
  decide +kernel
#print axioms cover_2259943

def state_2259974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 107) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
def hex_2259974 : String := "4044080A440A06"
theorem cover_2259974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2259974)
  decide +kernel
#print axioms cover_2259974

def state_2259981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
def hex_2259981 : String := "43424140060606414044430A42064140060606064443420A0A420641060606400A440A06420641404406060606"
theorem cover_2259981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2259981)
  decide +kernel
#print axioms cover_2259981
end Mub6.Numerical.CircleFullD0.Forest
