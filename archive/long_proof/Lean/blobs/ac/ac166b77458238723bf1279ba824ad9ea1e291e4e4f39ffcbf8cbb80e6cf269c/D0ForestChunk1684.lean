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
def state_2277402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 30)))
def hex_2277402 : String := "43414442090A4209404307410507090A4144420940430541050A09424043080809404341050A414442050508440A4208430A400808430909440A420A400A0A"
theorem cover_2277402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277402 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_2277402)
  decide +kernel
#print axioms cover_2277402

def state_2277467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 42 else 30)))
def hex_2277467 : String := "414405424007430505054442070607"
theorem cover_2277467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277467 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2277467)
  decide +kernel
#print axioms cover_2277467

def state_2277484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 60)))
def hex_2277484 : String := "42434005054041054405424305400505050505"
theorem cover_2277484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_2277484)
  decide +kernel
#print axioms cover_2277484

def state_2277505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 86 else 61)))
def hex_2277505 : String := "4041050741054405420705"
theorem cover_2277505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277505 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2277505)
  decide +kernel
#print axioms cover_2277505

def state_2277516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 87 else 61)))
def hex_2277516 : String := "4041440542430540050505444243074007410507430540050542074307094105444243054005050542434007054041440507074105440A074305400505"
theorem cover_2277516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2277516)
  decide +kernel
#print axioms cover_2277516

def state_2277577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 43 else 61)))
def hex_2277577 : String := "43054041050905"
theorem cover_2277577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277577 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2277577)
  decide +kernel
#print axioms cover_2277577

def state_2277585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 60)))
def hex_2277585 : String := "424340070A404144080A080A43400605400808"
theorem cover_2277585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2277585)
  decide +kernel
#print axioms cover_2277585
end Mub6.Numerical.CircleFullD0.Forest
