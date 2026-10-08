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
def state_1025169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
def hex_1025169 : String := "40444341420A440A4007080A0A4341080A08444341420540080842400A05404443414205440A400A050A0A4341080A08444341054205404409050508080808"
theorem cover_1025169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1025169)
  decide +kernel
#print axioms cover_1025169

def state_1025233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
def hex_1025233 : String := "44434107420A444007430707070A4341074240074407070741070A"
theorem cover_1025233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1025233)
  decide +kernel
#print axioms cover_1025233

def state_1025263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 24)))
def hex_1025263 : String := "4240444341074244400743070807074107420807430707444341064208060808400706"
theorem cover_1025263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1025263)
  decide +kernel
#print axioms cover_1025263

def state_1025303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 48)))
def hex_1025303 : String := "4244400A4341420507420A44400A430909400743070A0A400A43410742050708444007430741070A07"
theorem cover_1025303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1025303)
  decide +kernel
#print axioms cover_1025303

def state_1025344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 48)))
def hex_1025344 : String := "420A44400A43424144400A0940074307090941440807080A400A434241070A070A"
theorem cover_1025344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1025344)
  decide +kernel
#print axioms cover_1025344

def state_1025377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 48)))
def hex_1025377 : String := "0A"
theorem cover_1025377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1025377)
  decide +kernel
#print axioms cover_1025377

def state_1025378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 49)))
def hex_1025378 : String := "434142400744430707070742400A4443414205070A0A4341070A0840074443070A070A"
theorem cover_1025378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025378 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1025378)
  decide +kernel
#print axioms cover_1025378
end Mub6.Numerical.CircleFullD0.Forest
