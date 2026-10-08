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
def state_2274278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
def hex_2274278 : String := "4041424344070707074243440A0A4440060606434408400807440740080707"
theorem cover_2274278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274278 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2274278)
  decide +kernel
#print axioms cover_2274278

def state_2274311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
def hex_2274311 : String := "42434440410606074006064406064344074041074206070707"
theorem cover_2274311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274311 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2274311)
  decide +kernel
#print axioms cover_2274311

def state_2274336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
def hex_2274336 : String := "4243444006060606434440414206430A060841070A404142064344060606064106064440060606"
theorem cover_2274336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274336 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2274336)
  decide +kernel
#print axioms cover_2274336

def state_2274375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
def hex_2274375 : String := "41074243440A06064344070707"
theorem cover_2274375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274375 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2274375)
  decide +kernel
#print axioms cover_2274375

def state_2274389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 29)))
def hex_2274389 : String := "43444041084206430A064108094008084440060606"
theorem cover_2274389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2274389)
  decide +kernel
#print axioms cover_2274389

def state_2274414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 58)))
def hex_2274414 : String := "4243444008080844400808084344054041054208050544404105424305060541054243050505404108420643050608"
theorem cover_2274414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274414 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2274414)
  decide +kernel
#print axioms cover_2274414

def state_2274462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 90 else (if j.val < 4 then 44 else 58)))
def hex_2274462 : String := "43440A40070A44400A06400606"
theorem cover_2274462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274462 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_2274462)
  decide +kernel
#print axioms cover_2274462

def state_2274476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 91 else (if j.val < 4 then 88 else 58)))
def hex_2274476 : String := "444041420A050A0A40414243070A4305440A40070A0741420A4305050A"
theorem cover_2274476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2274476)
  decide +kernel
#print axioms cover_2274476
end Mub6.Numerical.CircleFullD0.Forest
