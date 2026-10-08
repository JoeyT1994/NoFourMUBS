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
def state_2307551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_2307551 : String := "4041424344064105070643444105074105400642050506074142430544050543440505444006054006054207434407404142074305070741050707"
theorem cover_2307551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307551 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2307551)
  decide +kernel
#print axioms cover_2307551

def state_2307613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
def hex_2307613 : String := "4243410640064406434207060606434106400644060606"
theorem cover_2307613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307613 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2307613)
  decide +kernel
#print axioms cover_2307613

def state_2307639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
def hex_2307639 : String := "440640064342060606"
theorem cover_2307639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2307639)
  decide +kernel
#print axioms cover_2307639

def state_2307649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 22)))
def hex_2307649 : String := "40064342410644074006434207440641060706410644060606"
theorem cover_2307649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 25) (hex := hex_2307649)
  decide +kernel
#print axioms cover_2307649

def state_2307674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
def hex_2307674 : String := "400643424441400643424406060606400543424407054441060505084140054342444106050509050544410640054342440608060641060508"
theorem cover_2307674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307674 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2307674)
  decide +kernel
#print axioms cover_2307674

def state_2307731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 11)))
def hex_2307731 : String := "06"
theorem cover_2307731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307731 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2307731)
  decide +kernel
#print axioms cover_2307731

def state_2307732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
def hex_2307732 : String := "434106444006420606400642434406410608060606"
theorem cover_2307732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_2307732)
  decide +kernel
#print axioms cover_2307732
end Mub6.Numerical.CircleFullD0.Forest
