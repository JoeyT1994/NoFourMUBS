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
def state_1012537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 47)))
def hex_1012537 : String := "44400A4341420909090A400A43414244400A09400A0544400A09400743060642094409400A090A"
theorem cover_1012537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1012537)
  decide +kernel
#print axioms cover_1012537

def state_1012576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 47)))
def hex_1012576 : String := "444043080A434142440909060841420A0609400A4341064244094007060641420A060A"
theorem cover_1012576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012576 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1012576)
  decide +kernel
#print axioms cover_1012576

def state_1012611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 47)))
def hex_1012611 : String := "420A44400809400A43090A"
theorem cover_1012611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1012611)
  decide +kernel
#print axioms cover_1012611

def state_1012622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 47)))
def hex_1012622 : String := "0A"
theorem cover_1012622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1012622)
  decide +kernel
#print axioms cover_1012622

def state_1012623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 23)))
def hex_1012623 : String := "4443090943414240440943414205060941420509090940444306094306410606064209094142400A084044430909434106090A440906420909"
theorem cover_1012623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1012623)
  decide +kernel
#print axioms cover_1012623

def state_1012681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 23)))
def hex_1012681 : String := "4443054241400544054305050505434241444005064007060505424144400543420A050A400A43060A0A05"
theorem cover_1012681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1012681)
  decide +kernel
#print axioms cover_1012681

def state_1012724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 23)))
def hex_1012724 : String := "444342090542414044050906090543424106400906064241064044094309090906"
theorem cover_1012724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1012724)
  decide +kernel
#print axioms cover_1012724

def state_1012759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 23)))
def hex_1012759 : String := "400A444108420843404441080908080808"
theorem cover_1012759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1012759)
  decide +kernel
#print axioms cover_1012759
end Mub6.Numerical.CircleFullD0.Forest
