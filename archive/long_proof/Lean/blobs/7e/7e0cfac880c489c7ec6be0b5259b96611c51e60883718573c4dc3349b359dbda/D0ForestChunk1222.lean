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
def state_1593665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 100)))
def hex_1593665 : String := "42404309410909430641094406420609400909"
theorem cover_1593665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1593665)
  decide +kernel
#print axioms cover_1593665

def state_1593685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 102 else (if j.val < 4 then 57 else 101)))
def hex_1593685 : String := "4043414409424009050844424009050942054009054144094240090909444240094305090942054007430509434108054144080844420540090505"
theorem cover_1593685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1593685)
  decide +kernel
#print axioms cover_1593685

def state_1593744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 103 else (if j.val < 4 then 57 else 101)))
def hex_1593744 : String := "404309410809430808"
theorem cover_1593744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1593744)
  decide +kernel
#print axioms cover_1593744

def state_1593753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
def hex_1593753 : String := "4108430644420608420508"
theorem cover_1593753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1593753)
  decide +kernel
#print axioms cover_1593753

def state_1593766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
def hex_1593766 : String := "43084244404108430808080808"
theorem cover_1593766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1593766)
  decide +kernel
#print axioms cover_1593766

def state_1593779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
def hex_1593779 : String := "4342440505444041084305080805424440434142050805414244050544400708050505054440434108444207070741084407070840430841060505"
theorem cover_1593779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593779 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1593779)
  decide +kernel
#print axioms cover_1593779

def state_1593838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
def hex_1593838 : String := "4108430505"
theorem cover_1593838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593838 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1593838)
  decide +kernel
#print axioms cover_1593838

def state_1593847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 50)))
def hex_1593847 : String := "434244400A410A0A400A0A44404109094109430909404143090943420A44094009090A414308420A08434205440805420A44090A420A4440090A400A0A"
theorem cover_1593847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593847 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1593847)
  decide +kernel
#print axioms cover_1593847

def state_1593910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 100 else (if j.val < 4 then 58 else 50)))
def hex_1593910 : String := "44400A0A400A05"
theorem cover_1593910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1593910)
  decide +kernel
#print axioms cover_1593910
end Mub6.Numerical.CircleFullD0.Forest
