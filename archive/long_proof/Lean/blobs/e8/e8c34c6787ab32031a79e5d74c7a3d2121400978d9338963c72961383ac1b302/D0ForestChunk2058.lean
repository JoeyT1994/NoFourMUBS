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
def state_2574377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 94 else (if j.val < 4 then 94 else 37)))
def hex_2574377 : String := "4041444205074205430540060544420543054006050605"
theorem cover_2574377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2574377)
  decide +kernel
#print axioms cover_2574377

def state_2574400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 94 else (if j.val < 4 then 95 else 37)))
def hex_2574400 : String := "4041440A0A4443424006054041070641050542094009410A440709430642060941440A0A44430542054041050505430542054041050505"
theorem cover_2574400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574400 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2574400)
  decide +kernel
#print axioms cover_2574400

def state_2574456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 94 else 37)))
def hex_2574456 : String := "40414407424340060540440706440505430840084407410707440742064306084144074205430540440505054407420543054041050505"
theorem cover_2574456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2574456)
  decide +kernel
#print axioms cover_2574456

def state_2574512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 37)))
def hex_2574512 : String := "4144420A07420A434044070944070A0A44424307404107074107070742434006DC4009DC434008DC40410908DC"
theorem cover_2574512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574512 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 45) (hex := hex_2574512)
  decide +kernel
#print axioms cover_2574512

def state_2574557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 37)))
def hex_2574557 : String := "4144420A07420A434044070A4405050A444243074041070741050507DC"
theorem cover_2574557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574557 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2574557)
  decide +kernel
#print axioms cover_2574557

def state_2574587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 46 else (if j.val < 4 then 23 else 19)))
def hex_2574587 : String := "434006440506400644410A43064206400605410706"
theorem cover_2574587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574587 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2574587)
  decide +kernel
#print axioms cover_2574587
end Mub6.Numerical.CircleFullD0.Forest
