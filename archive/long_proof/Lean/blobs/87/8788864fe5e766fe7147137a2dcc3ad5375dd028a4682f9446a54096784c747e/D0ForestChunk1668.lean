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
def state_2273558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 29)))
def hex_2273558 : String := "434405404105070544404105424305440540050505054041054243400705404144050707410544070743054005054105424305410544400505404207050505"
theorem cover_2273558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2273558)
  decide +kernel
#print axioms cover_2273558

def state_2273621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 29)))
def hex_2273621 : String := "43054405400505"
theorem cover_2273621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273621 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2273621)
  decide +kernel
#print axioms cover_2273621

def state_2273628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
def hex_2273628 : String := "410543054405424043054405410542430505050505"
theorem cover_2273628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273628 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_2273628)
  decide +kernel
#print axioms cover_2273628

def state_2273650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 15)))
def hex_2273650 : String := "404143080843074442430708434007084041080708084143080843444240070840410807410809084442084043080843080808"
theorem cover_2273650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273650 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2273650)
  decide +kernel
#print axioms cover_2273650

def state_2273703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
def hex_2273703 : String := "43440508444241054305080508"
theorem cover_2273703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273703 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2273703)
  decide +kernel
#print axioms cover_2273703

def state_2273717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 15)))
def hex_2273717 : String := "44424007410507404105060507"
theorem cover_2273717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273717 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2273717)
  decide +kernel
#print axioms cover_2273717

def state_2273733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 42 else 30)))
def hex_2273733 : String := "40414405070741054442070507"
theorem cover_2273733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2273733)
  decide +kernel
#print axioms cover_2273733

def state_2273746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 43 else 30)))
def hex_2273746 : String := "404144420805084442074307400741050707414442080508444243410807410840070843054105404405420705054208434105074108400708"
theorem cover_2273746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273746 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2273746)
  decide +kernel
#print axioms cover_2273746
end Mub6.Numerical.CircleFullD0.Forest
