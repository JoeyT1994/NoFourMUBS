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
def state_2282381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
def hex_2282381 : String := "400741444243074006064340074144420743074007410507070740410907414442434006060643090942060944420643070607420743074007414406060607"
theorem cover_2282381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282381 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_2282381)
  decide +kernel
#print axioms cover_2282381

def state_2282444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 62)))
def hex_2282444 : String := "404144420609060741444206434006060606444205434005060606"
theorem cover_2282444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2282444)
  decide +kernel
#print axioms cover_2282444

def state_2282471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 62)))
def hex_2282471 : String := "43400941444243400941090909094243090909444243070909094009414442430909090944424309090909"
theorem cover_2282471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282471 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2282471)
  decide +kernel
#print axioms cover_2282471

def state_2282514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 63)))
def hex_2282514 : String := "4243074006064340074109074009410909"
theorem cover_2282514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282514 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_2282514)
  decide +kernel
#print axioms cover_2282514

def state_2282536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
def hex_2282536 : String := "41084442434008084008084340410544424305050542080541054405084041084442430806430540050542064308064105444243050605084208430808"
theorem cover_2282536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2282536)
  decide +kernel
#print axioms cover_2282536

def state_2282597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
def hex_2282597 : String := "41084442094305074208430808"
theorem cover_2282597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2282597)
  decide +kernel
#print axioms cover_2282597

def state_2282610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 62)))
def hex_2282610 : String := "4041084442064340060606064107440706"
theorem cover_2282610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2282610)
  decide +kernel
#print axioms cover_2282610
end Mub6.Numerical.CircleFullD0.Forest
