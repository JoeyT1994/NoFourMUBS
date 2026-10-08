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
def state_1472761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 59)))
def hex_1472761 : String := "4240430A41064442060A0606400A430A4109440906"
theorem cover_1472761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1472761)
  decide +kernel
#print axioms cover_1472761

def state_1472783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
def hex_1472783 : String := "09"
theorem cover_1472783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472783 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1472783)
  decide +kernel
#print axioms cover_1472783

def state_1472786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 45 else 58)))
def hex_1472786 : String := "404341094442400709404341070707094240070640070941070709"
theorem cover_1472786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472786 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1472786)
  decide +kernel
#print axioms cover_1472786

def state_1472816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 86) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
def hex_1472816 : String := "440909"
theorem cover_1472816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472816 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1472816)
  decide +kernel
#print axioms cover_1472816

def state_1472821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 66 else (if j.val < 4 then 90 else 116)))
def hex_1472821 : String := "4043414407074442074006434107070707074341094409094109440707"
theorem cover_1472821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1472821)
  decide +kernel
#print axioms cover_1472821

def state_1472850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 116)))
def hex_1472850 : String := "4043410A44060A410707434109444240434109060909400608424043090909400A09410944424007094006094240070940434107070709"
theorem cover_1472850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472850 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1472850)
  decide +kernel
#print axioms cover_1472850

def state_1472905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 117)))
def hex_1472905 : String := "42404341094407070743090940430A410707430A4109444209404309070942090A"
theorem cover_1472905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1472905)
  decide +kernel
#print axioms cover_1472905

def state_1472938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 91 else 58)))
def hex_1472938 : String := "4144090744420740074341070707420740074341070707"
theorem cover_1472938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1472938)
  decide +kernel
#print axioms cover_1472938

def state_1472961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 58)))
def hex_1472961 : String := "4341094409094109440909"
theorem cover_1472961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1472961)
  decide +kernel
#print axioms cover_1472961

def state_1472972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 59)))
def hex_1472972 : String := "424043410608070640434109444240084306060A0A4108440707430909"
theorem cover_1472972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472972 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1472972)
  decide +kernel
#print axioms cover_1472972

def state_1473001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
def hex_1473001 : String := "43410944090909"
theorem cover_1473001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1473001)
  decide +kernel
#print axioms cover_1473001
end Mub6.Numerical.CircleFullD0.Forest
