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
def state_2585447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 18)))
def hex_2585447 : String := "414243400A060A434044060A06064243404407410A4243070808440741420707424307400707074044070A44064106420A0643404407084406410607400506"
theorem cover_2585447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585447 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2585447)
  decide +kernel
#print axioms cover_2585447

def state_2585511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
def hex_2585511 : String := "4243400A440A0A0A434044410A420A054105420A05444106420A06410A4243400A0A0A434044050544064106420A060A40050A"
theorem cover_2585511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_2585511)
  decide +kernel
#print axioms cover_2585511

def state_2585565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
def hex_2585565 : String := "4441420A43080A42430840080A0841420A43080A42430640060A43084005440807"
theorem cover_2585565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2585565)
  decide +kernel
#print axioms cover_2585565

def state_2585600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 38)))
def hex_2585600 : String := "4243400A050A434044070A44070A0A"
theorem cover_2585600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2585600)
  decide +kernel
#print axioms cover_2585600

def state_2585616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 96 else (if j.val < 4 then 46 else 38)))
def hex_2585616 : String := "434044410707410A4205080540440A0A440A0A"
theorem cover_2585616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2585616)
  decide +kernel
#print axioms cover_2585616

def state_2585635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 97 else (if j.val < 4 then 46 else 38)))
def hex_2585635 : String := "43404407084407414243050543084008054205094044410A08410A42430808084441064243070606410A4243400A050A43400809400A06"
theorem cover_2585635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2585635)
  decide +kernel
#print axioms cover_2585635
end Mub6.Numerical.CircleFullD0.Forest
