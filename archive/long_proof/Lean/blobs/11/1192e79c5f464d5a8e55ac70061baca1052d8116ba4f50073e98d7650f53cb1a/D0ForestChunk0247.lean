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
def state_996708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 174)))
def hex_996708 : String := "4342414044060808064140444342410905050A43420A090A4443424108050508434208410805084044050A444305054342410A05050A420641400A0806"
theorem cover_996708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996708 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_996708)
  decide +kernel
#print axioms cover_996708

def state_996769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 175)))
def hex_996769 : String := "434241080A4140444309080808400A4443420A4105050A430A08420841080A"
theorem cover_996769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_996769)
  decide +kernel
#print axioms cover_996769

def state_996801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
def hex_996801 : String := "4044090744430909430709"
theorem cover_996801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996801 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_996801)
  decide +kernel
#print axioms cover_996801

def state_996813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
def hex_996813 : String := "444305420A05434241070505420A410705"
theorem cover_996813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996813 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_996813)
  decide +kernel
#print axioms cover_996813

def state_996831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 174)))
def hex_996831 : String := "43424140054405430542090505054241404443050909444342080508084005440543050A410505"
theorem cover_996831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_996831)
  decide +kernel
#print axioms cover_996831

def state_996870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 175)))
def hex_996870 : String := "4342414044090744430909094044050A44054305420A0541400506054241400908400A440A0A4140090940054405430505"
theorem cover_996870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_996870)
  decide +kernel
#print axioms cover_996870

def state_996919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 87)))
def hex_996919 : String := "42410840064408084140090840440A0A44434241080641400944090805420841080A434241080A41080A08"
theorem cover_996919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_996919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_996919)
  decide +kernel
#print axioms cover_996919
end Mub6.Numerical.CircleFullD0.Forest
