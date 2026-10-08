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
def state_1311633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 63 else 49)))
def hex_1311633 : String := "4441424043444107060744064107064305440641420507054007430744090742400605084142404307444107080743054441070505074240080508"
theorem cover_1311633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1311633)
  decide +kernel
#print axioms cover_1311633

def state_1311692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
def hex_1311692 : String := "430544414205050505"
theorem cover_1311692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311692 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1311692)
  decide +kernel
#print axioms cover_1311692

def state_1311701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 31 else 49)))
def hex_1311701 : String := "4043070843440505444142400705070A4107420508"
theorem cover_1311701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1311701)
  decide +kernel
#print axioms cover_1311701

def state_1311722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
def hex_1311722 : String := "43074441070A410708"
theorem cover_1311722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1311722)
  decide +kernel
#print axioms cover_1311722

def state_1311731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_1311731 : String := "4243054441404205430544094107090505414042050705054344410705074441400707400A42050A410740424305440A0707420507"
theorem cover_1311731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311731 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1311731)
  decide +kernel
#print axioms cover_1311731

def state_1311785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1311785 : String := "4243410744420507054144424007070707444240434107054144424007050707080540074305410708424007050707"
theorem cover_1311785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_1311785)
  decide +kernel
#print axioms cover_1311785

def state_1311832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1311832 : String := "424305414440420507050505430741074440070707"
theorem cover_1311832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1311832)
  decide +kernel
#print axioms cover_1311832
end Mub6.Numerical.CircleFullD0.Forest
