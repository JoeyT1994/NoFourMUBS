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
def state_967977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
def hex_967977 : String := "4243440A0909434441400A42440A09440A43410940094209440A07090A410940094209434441090A0709440A09"
theorem cover_967977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 45) (hex := hex_967977)
  decide +kernel
#print axioms cover_967977

def state_968024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 14)))
def hex_968024 : String := "43444009070807"
theorem cover_968024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_968024)
  decide +kernel
#print axioms cover_968024

def state_968035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
def hex_968035 : String := "4209444340094108080909"
theorem cover_968035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_968035)
  decide +kernel
#print axioms cover_968035

def state_968046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
def hex_968046 : String := "42444340090606094443404142094443400908090842094443404142090A0A0606434009080941420644060842064406084009064340090809"
theorem cover_968046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_968046)
  decide +kernel
#print axioms cover_968046

def state_968103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 28)))
def hex_968103 : String := "41420744430806084206440608"
theorem cover_968103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_968103)
  decide +kernel
#print axioms cover_968103

def state_968116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 29)))
def hex_968116 : String := "400908"
theorem cover_968116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_968116)
  decide +kernel
#print axioms cover_968116

def state_968119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 14)))
def hex_968119 : String := "4440090609"
theorem cover_968119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968119 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_968119)
  decide +kernel
#print axioms cover_968119

def state_968125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 14)))
def hex_968125 : String := "4344070907"
theorem cover_968125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968125 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_968125)
  decide +kernel
#print axioms cover_968125

def state_968135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 28)))
def hex_968135 : String := "440609"
theorem cover_968135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_968135)
  decide +kernel
#print axioms cover_968135

def state_968139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 56)))
def hex_968139 : String := "434041420A440A43400A414208080A0A0A0606"
theorem cover_968139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968139 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_968139)
  decide +kernel
#print axioms cover_968139

def state_968158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 57)))
def hex_968158 : String := "4340414209444340090809084209444341400A4208080A0A4341084007080941420808424406084443404108420606060608400906"
theorem cover_968158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_968158)
  decide +kernel
#print axioms cover_968158
end Mub6.Numerical.CircleFullD0.Forest
