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
def state_1535427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
def hex_1535427 : String := "42430941444007424306070640094243414440074207064009424308414407050709074144074007420743410A070707430941440909070709"
theorem cover_1535427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 57) (hex := hex_1535427)
  decide +kernel
#print axioms cover_1535427

def state_1535484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
def hex_1535484 : String := "4243064144064042434144064042080606064144404207060640424308070A42080606430606060606"
theorem cover_1535484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 41) (hex := hex_1535484)
  decide +kernel
#print axioms cover_1535484

def state_1535525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
def hex_1535525 : String := "4306440609"
theorem cover_1535525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1535525)
  decide +kernel
#print axioms cover_1535525

def state_1535530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
def hex_1535530 : String := "4142434406074440414243060906060640414207074243064406404209060606410706074243060606"
theorem cover_1535530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535530 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1535530)
  decide +kernel
#print axioms cover_1535530

def state_1535573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
def hex_1535573 : String := "42430544404105424305444042410543050805424105430544400A0A05050505410542430544404241054305440A05054241054305440A050505050505"
theorem cover_1535573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 61) (hex := hex_1535573)
  decide +kernel
#print axioms cover_1535573

def state_1535636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 9)))
def hex_1535636 : String := "44400942050505"
theorem cover_1535636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1535636)
  decide +kernel
#print axioms cover_1535636

def state_1535647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 18)))
def hex_1535647 : String := "440909"
theorem cover_1535647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535647 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1535647)
  decide +kernel
#print axioms cover_1535647
end Mub6.Numerical.CircleFullD0.Forest
