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
def state_1314726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
def hex_1314726 : String := "44400643060940430609434142440640064306414207050606064142444009430A094043410906094341420A440940090A420A090909424409400643060909"
theorem cover_1314726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314726 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1314726)
  decide +kernel
#print axioms cover_1314726

def state_1314790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_1314790 : String := "440841424043074407070705420708"
theorem cover_1314790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314790 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1314790)
  decide +kernel
#print axioms cover_1314790

def state_1314806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_1314806 : String := "4108424043080A0808"
theorem cover_1314806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1314806)
  decide +kernel
#print axioms cover_1314806

def state_1314816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_1314816 : String := "424044434108080A434107070A0A40440843054105420A0508"
theorem cover_1314816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314816 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1314816)
  decide +kernel
#print axioms cover_1314816

def state_1314841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_1314841 : String := "424044430A0A434107070A0A4044430841080843414244084043070A0705424408070841420A44084043080908420A4408400908440843080A"
theorem cover_1314841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1314841)
  decide +kernel
#print axioms cover_1314841

def state_1314898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
def hex_1314898 : String := "40434408410506444105094105424409400643060905430544084105424044084305080805"
theorem cover_1314898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1314898)
  decide +kernel
#print axioms cover_1314898
end Mub6.Numerical.CircleFullD0.Forest
