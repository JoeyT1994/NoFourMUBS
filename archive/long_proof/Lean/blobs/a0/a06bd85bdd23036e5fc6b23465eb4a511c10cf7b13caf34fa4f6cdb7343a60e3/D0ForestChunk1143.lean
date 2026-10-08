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
def state_1574780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 22)))
def hex_1574780 : String := "414440054206054042430605054206430605444042080542064306054042430608430905420643064144050644074042060506"
theorem cover_1574780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1574780)
  decide +kernel
#print axioms cover_1574780

def state_1574831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
def hex_1574831 : String := "41440540050544400542434105440540050505054009424309410544054005420605430905"
theorem cover_1574831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1574831)
  decide +kernel
#print axioms cover_1574831

def state_1574868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
def hex_1574868 : String := "40094309424144400942060909444042090942064306410644060640090609"
theorem cover_1574868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1574868)
  decide +kernel
#print axioms cover_1574868

def state_1574899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
def hex_1574899 : String := "410944400943094241054405090509"
theorem cover_1574899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574899 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1574899)
  decide +kernel
#print axioms cover_1574899

def state_1574915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_1574915 : String := "43440A0844420A0A0A"
theorem cover_1574915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574915 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1574915)
  decide +kernel
#print axioms cover_1574915

def state_1574925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
def hex_1574925 : String := "444240410643064406060640414309440A0843440A064442410A4043060A064140090A4043094405090A08410A43060A420608"
theorem cover_1574925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574925 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1574925)
  decide +kernel
#print axioms cover_1574925

def state_1574978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
def hex_1574978 : String := "40414344070A0743444206410740430A05064206410A404306440606064407074107430607"
theorem cover_1574978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574978 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1574978)
  decide +kernel
#print axioms cover_1574978
end Mub6.Numerical.CircleFullD0.Forest
