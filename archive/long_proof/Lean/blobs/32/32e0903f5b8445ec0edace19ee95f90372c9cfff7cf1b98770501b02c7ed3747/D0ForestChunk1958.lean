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
def state_2550388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_2550388 : String := "424306440540414205050605434405404143050506054405404144054243050543050544424305054305054206430641440506064105440506"
theorem cover_2550388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2550388)
  decide +kernel
#print axioms cover_2550388

def state_2550446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_2550446 : String := "05"
theorem cover_2550446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550446 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2550446)
  decide +kernel
#print axioms cover_2550446

def state_2550449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_2550449 : String := "4244054342054405400905054405434440410542050505404142050542430A44050A430A06410542050544054041050605"
theorem cover_2550449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2550449)
  decide +kernel
#print axioms cover_2550449

def state_2550499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
def hex_2550499 : String := "44434105420540070505434142094440090540090942094409094142054405094209440909"
theorem cover_2550499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550499 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_2550499)
  decide +kernel
#print axioms cover_2550499

def state_2550537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
def hex_2550537 : String := "434140420505054007420505410507"
theorem cover_2550537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2550537)
  decide +kernel
#print axioms cover_2550537

def state_2550555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 22)))
def hex_2550555 : String := "40424341440509070743410606064205430505"
theorem cover_2550555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2550555)
  decide +kernel
#print axioms cover_2550555

def state_2550575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
def hex_2550575 : String := "42434441420943090609410A42090A4441090941090943444106434006420906060A4406410606"
theorem cover_2550575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2550575)
  decide +kernel
#print axioms cover_2550575
end Mub6.Numerical.CircleFullD0.Forest
