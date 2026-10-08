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
def state_976325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 57)))
def hex_976325 : String := "424340410A070A054340070940414442054307050544424307050707410A4442430905090A"
theorem cover_976325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976325 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_976325)
  decide +kernel
#print axioms cover_976325

def state_976362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
def hex_976362 : String := "44424309404144064206060606094243400709404144420507050741440605064307400741440942080709"
theorem cover_976362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976362 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_976362)
  decide +kernel
#print axioms cover_976362

def state_976405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 29)))
def hex_976405 : String := "400741424443080505444307050842444307050507"
theorem cover_976405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_976405)
  decide +kernel
#print axioms cover_976405

def state_976427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 14)))
def hex_976427 : String := "05"
theorem cover_976427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_976427)
  decide +kernel
#print axioms cover_976427

def state_976430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 28)))
def hex_976430 : String := "4143444205400A41434442054008410808050543440A4205070A05440A0543440A4205070A"
theorem cover_976430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976430 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_976430)
  decide +kernel
#print axioms cover_976430

def state_976467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 28)))
def hex_976467 : String := "4143444205404143444205404108060605054344064205404105060606414344060505060505434406420540414307054307050606"
theorem cover_976467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976467 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_976467)
  decide +kernel
#print axioms cover_976467

def state_976520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 29)))
def hex_976520 : String := "05"
theorem cover_976520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_976520)
  decide +kernel
#print axioms cover_976520

def state_976522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
def hex_976522 : String := "4244404142440A430705440A070A414206440643400706064206064007414244050544430705054244060507444007414409424307400706070907"
theorem cover_976522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_976522)
  decide +kernel
#print axioms cover_976522
end Mub6.Numerical.CircleFullD0.Forest
