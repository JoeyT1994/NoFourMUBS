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
def state_1036845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
def hex_1036845 : String := "4142434440054105070505074243444007410707070507"
theorem cover_1036845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036845 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1036845)
  decide +kernel
#print axioms cover_1036845

def state_1036869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
def hex_1036869 : String := "424344404108420807080844060543444007080705"
theorem cover_1036869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036869 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1036869)
  decide +kernel
#print axioms cover_1036869

def state_1036891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 104 else (if j.val < 4 then 38 else 62)))
def hex_1036891 : String := "43444041424344064007060607424344064007060607410606404142430705054243444007410606070507410842434406080643440607064406400506"
theorem cover_1036891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036891 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1036891)
  decide +kernel
#print axioms cover_1036891

def state_1036952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 105 else (if j.val < 4 then 38 else 62)))
def hex_1036952 : String := "43444007410706074406400506"
theorem cover_1036952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1036952)
  decide +kernel
#print axioms cover_1036952

def state_1036965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
def hex_1036965 : String := "4041054205054142080542434440410507410842080740050805430705"
theorem cover_1036965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1036965)
  decide +kernel
#print axioms cover_1036965

def state_1036994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 31)))
def hex_1036994 : String := "44400541050605"
theorem cover_1036994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036994 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1036994)
  decide +kernel
#print axioms cover_1036994

def state_1037001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 31)))
def hex_1037001 : String := "430744400541050505"
theorem cover_1037001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1037001)
  decide +kernel
#print axioms cover_1037001

def state_1037014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
def hex_1037014 : String := "414243440A070A07420A07"
theorem cover_1037014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037014 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1037014)
  decide +kernel
#print axioms cover_1037014

def state_1037027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 38 else 62)))
def hex_1037027 : String := "43444041420A070A41060640414243440A070A07420A0741424344064041060606064344060706424344064041060606064309064406400A06"
theorem cover_1037027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037027 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1037027)
  decide +kernel
#print axioms cover_1037027

def state_1037084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 105 else (if j.val < 4 then 38 else 62)))
def hex_1037084 : String := "4344400709074406400706"
theorem cover_1037084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1037084)
  decide +kernel
#print axioms cover_1037084
end Mub6.Numerical.CircleFullD0.Forest
