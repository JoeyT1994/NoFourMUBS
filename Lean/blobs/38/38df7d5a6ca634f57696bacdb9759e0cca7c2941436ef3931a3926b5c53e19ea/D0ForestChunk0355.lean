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
def state_1022578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 51)))
def hex_1022578 : String := "41404344420541400605060944420641400644050506420509430544420541054044050505054006434442054105060544420641400605064205410506"
theorem cover_1022578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1022578)
  decide +kernel
#print axioms cover_1022578

def state_1022642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 51)))
def hex_1022642 : String := "4442414007430744420507054006434442050742050744420641070642050741074007430707420907"
theorem cover_1022642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1022642)
  decide +kernel
#print axioms cover_1022642

def state_1022685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 102)))
def hex_1022685 : String := "4140444307090744434205074241050641074007440A074309084006444342064140064406060642060A43420609420609"
theorem cover_1022685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1022685)
  decide +kernel
#print axioms cover_1022685

def state_1022734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
def hex_1022734 : String := "4140074407074044070744434241074006444306060707420A074307420907"
theorem cover_1022734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1022734)
  decide +kernel
#print axioms cover_1022734

def state_1022765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 103)))
def hex_1022765 : String := "420909"
theorem cover_1022765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1022765)
  decide +kernel
#print axioms cover_1022765

def state_1022770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 102)))
def hex_1022770 : String := "42410540430544420541054044050505050541404307070A404344080744424140070540084408050742410540070507430A4442050A0A"
theorem cover_1022770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1022770)
  decide +kernel
#print axioms cover_1022770
end Mub6.Numerical.CircleFullD0.Forest
