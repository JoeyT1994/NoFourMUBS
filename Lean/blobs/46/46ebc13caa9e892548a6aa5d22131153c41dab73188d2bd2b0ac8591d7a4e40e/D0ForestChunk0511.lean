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
def state_1311379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
def hex_1311379 : String := "420540430544414240430506054043050605420506414205404305444142064006050641420507420506050505"
theorem cover_1311379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 45) (hex := hex_1311379)
  decide +kernel
#print axioms cover_1311379

def state_1311424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1311424 : String := "05"
theorem cover_1311424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1311424)
  decide +kernel
#print axioms cover_1311424

def state_1311425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1311425 : String := "404305414244400A050544404305444107420A070705400705420544404305414442054043054441070505050505050505"
theorem cover_1311425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 49) (hex := hex_1311425)
  decide +kernel
#print axioms cover_1311425

def state_1311474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
def hex_1311474 : String := "05"
theorem cover_1311474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311474 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1311474)
  decide +kernel
#print axioms cover_1311474

def state_1311475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1311475 : String := "05"
theorem cover_1311475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311475 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1311475)
  decide +kernel
#print axioms cover_1311475

def state_1311478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_1311478 : String := "414440420507050744400A0505"
theorem cover_1311478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311478 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1311478)
  decide +kernel
#print axioms cover_1311478

def state_1311496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 24)))
def hex_1311496 : String := "4441424007050742050A4107420507"
theorem cover_1311496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311496 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1311496)
  decide +kernel
#print axioms cover_1311496

def state_1311513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 48)))
def hex_1311513 : String := "4240434441070907094305440941094205094007430709"
theorem cover_1311513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311513 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1311513)
  decide +kernel
#print axioms cover_1311513

def state_1311536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 48)))
def hex_1311536 : String := "424043444142050905414205400705054441090641424043060643050609420606430544054142050505400A4305440941090A"
theorem cover_1311536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1311536)
  decide +kernel
#print axioms cover_1311536

def state_1311588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 49)))
def hex_1311588 : String := "424043074441074240074307440907070743054441074205400705410742050707"
theorem cover_1311588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311588 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1311588)
  decide +kernel
#print axioms cover_1311588

def state_1311624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 49)))
def hex_1311624 : String := "444142050705410705"
theorem cover_1311624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311624 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1311624)
  decide +kernel
#print axioms cover_1311624
end Mub6.Numerical.CircleFullD0.Forest
