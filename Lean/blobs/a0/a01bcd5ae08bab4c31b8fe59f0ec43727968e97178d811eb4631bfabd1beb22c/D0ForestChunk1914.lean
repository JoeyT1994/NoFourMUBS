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
def state_2332405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 14)))
def hex_2332405 : String := "42404341440506084144054243410506410508050843410506414405424043050505050840430505430505"
theorem cover_2332405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2332405)
  decide +kernel
#print axioms cover_2332405

def state_2332450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 15)))
def hex_2332450 : String := "4341440607074144424341090741090909424307090944424307080807"
theorem cover_2332450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332450 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2332450)
  decide +kernel
#print axioms cover_2332450

def state_2332480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 20 else 15)))
def hex_2332480 : String := "4144060606"
theorem cover_2332480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332480 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2332480)
  decide +kernel
#print axioms cover_2332480

def state_2332487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 30)))
def hex_2332487 : String := "42404306410544084243060906430541054405424043050505054043050505"
theorem cover_2332487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332487 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2332487)
  decide +kernel
#print axioms cover_2332487

def state_2332520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 21 else 31)))
def hex_2332520 : String := "43410606414442430509050944424309090909"
theorem cover_2332520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2332520)
  decide +kernel
#print axioms cover_2332520

def state_2332540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 42 else 31)))
def hex_2332540 : String := "410606"
theorem cover_2332540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332540 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2332540)
  decide +kernel
#print axioms cover_2332540

def state_2332544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 48 else (if j.val < 4 then 43 else 31)))
def hex_2332544 : String := "440542404305410544050943050505"
theorem cover_2332544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2332544)
  decide +kernel
#print axioms cover_2332544

def state_2332559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 48 else (if j.val < 4 then 43 else 31)))
def hex_2332559 : String := "4442404306414405424305050544064243060906430641054406060642404306410909430641444240050505E5444240060606E5400606"
theorem cover_2332559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332559 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2332559)
  decide +kernel
#print axioms cover_2332559

def state_2332614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 21 else 31)))
def hex_2332614 : String := "404306094305410506"
theorem cover_2332614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332614 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2332614)
  decide +kernel
#print axioms cover_2332614
end Mub6.Numerical.CircleFullD0.Forest
