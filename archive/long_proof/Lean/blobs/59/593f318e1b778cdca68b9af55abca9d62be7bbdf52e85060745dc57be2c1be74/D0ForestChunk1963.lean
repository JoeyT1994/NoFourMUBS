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
def state_2551600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_2551600 : String := "440542434406400641054205050606"
theorem cover_2551600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2551600)
  decide +kernel
#print axioms cover_2551600

def state_2551616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_2551616 : String := "42434106400644054205050606"
theorem cover_2551616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2551616)
  decide +kernel
#print axioms cover_2551616

def state_2551632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_2551632 : String := "44400642430505054006424344410540060541400605400A4243050543050544064106064344060A06"
theorem cover_2551632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551632 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2551632)
  decide +kernel
#print axioms cover_2551632

def state_2551674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_2551674 : String := "400642434144054006054440060540074243050543050541060743410644060606"
theorem cover_2551674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551674 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2551674)
  decide +kernel
#print axioms cover_2551674

def state_2551708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
def hex_2551708 : String := "42434144060A440742070A0606"
theorem cover_2551708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551708 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2551708)
  decide +kernel
#print axioms cover_2551708

def state_2551725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
def hex_2551725 : String := "404243410644064006420706060642430505430505"
theorem cover_2551725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551725 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2551725)
  decide +kernel
#print axioms cover_2551725

def state_2551747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_2551747 : String := "42430A44060A430A06"
theorem cover_2551747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2551747)
  decide +kernel
#print axioms cover_2551747

def state_2551757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 47)))
def hex_2551757 : String := "43444105404208080541084008084441054043420906060541400A0540430A420906434209440508420544054105400A05"
theorem cover_2551757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551757 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2551757)
  decide +kernel
#print axioms cover_2551757

def state_2551806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 47)))
def hex_2551806 : String := "43444105400A054108400808444105064106400642430A0606"
theorem cover_2551806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2551806)
  decide +kernel
#print axioms cover_2551806

def state_2551833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
def hex_2551833 : String := "424307074341060706"
theorem cover_2551833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551833 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2551833)
  decide +kernel
#print axioms cover_2551833
end Mub6.Numerical.CircleFullD0.Forest
