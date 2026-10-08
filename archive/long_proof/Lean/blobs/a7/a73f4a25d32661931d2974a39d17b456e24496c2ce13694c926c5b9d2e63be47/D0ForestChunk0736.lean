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
def state_1477507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 67 else (if j.val < 4 then 180 else 116)))
def hex_1477507 : String := "4408424043410505414407050543084108084043050508"
theorem cover_1477507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1477507)
  decide +kernel
#print axioms cover_1477507

def state_1477530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 181 else 116)))
def hex_1477530 : String := "414442400743410808074006084240074341094407070740434107070743414408090841070744420A084240070A40434105050743080A"
theorem cover_1477530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477530 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_1477530)
  decide +kernel
#print axioms cover_1477530

def state_1477587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 90 else 117)))
def hex_1477587 : String := "4341440705444207050507"
theorem cover_1477587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477587 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1477587)
  decide +kernel
#print axioms cover_1477587

def state_1477599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 180 else 117)))
def hex_1477599 : String := "414442404341070707064043410505074341094409054109440906420640050644424043410505074306064043050543410505414442060505440A05420605"
theorem cover_1477599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477599 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1477599)
  decide +kernel
#print axioms cover_1477599

def state_1477662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 181 else 117)))
def hex_1477662 : String := "41440707440707"
theorem cover_1477662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477662 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1477662)
  decide +kernel
#print axioms cover_1477662

def state_1477670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 117)))
def hex_1477670 : String := "43410505410705"
theorem cover_1477670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1477670)
  decide +kernel
#print axioms cover_1477670

def state_1477678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 180 else 117)))
def hex_1477678 : String := "4144424043050543410505410905400543050505444240054305050505"
theorem cover_1477678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1477678)
  decide +kernel
#print axioms cover_1477678

def state_1477707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 181 else 117)))
def hex_1477707 : String := "41444240074341094407050740430505434105054107074240054305070544424007434144070505074005430541050505"
theorem cover_1477707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477707 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1477707)
  decide +kernel
#print axioms cover_1477707
end Mub6.Numerical.CircleFullD0.Forest
