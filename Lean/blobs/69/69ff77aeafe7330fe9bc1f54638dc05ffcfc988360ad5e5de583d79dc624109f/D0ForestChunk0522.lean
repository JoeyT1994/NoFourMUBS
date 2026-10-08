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
def state_1314037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 46)))
def hex_1314037 : String := "444340064107064041424443060943064006074406060641420A05420A440643060A4340070740414207444306090742070641420744070707"
theorem cover_1314037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1314037)
  decide +kernel
#print axioms cover_1314037

def state_1314094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 46)))
def hex_1314094 : String := "444306400641050643400605404142440543050905064105424406430640060705"
theorem cover_1314094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314094 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1314094)
  decide +kernel
#print axioms cover_1314094

def state_1314127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 46)))
def hex_1314127 : String := "4244064306400641070506"
theorem cover_1314127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314127 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1314127)
  decide +kernel
#print axioms cover_1314127

def state_1314138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 46)))
def hex_1314138 : String := "4142444009430A094043414244090809090943410A0A0A440940094341424405400905050909424409400543410A050909"
theorem cover_1314138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1314138)
  decide +kernel
#print axioms cover_1314138

def state_1314187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 46)))
def hex_1314187 : String := "434142444043070A084043070A070542444043060A07400707440840430641420708060841420A440A40430A0A0A420A440A40430A090A"
theorem cover_1314187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1314187)
  decide +kernel
#print axioms cover_1314187

def state_1314245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 47)))
def hex_1314245 : String := "4244430740410707070744434006074041424443054006050705064105420705430740410707410507"
theorem cover_1314245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314245 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1314245)
  decide +kernel
#print axioms cover_1314245
end Mub6.Numerical.CircleFullD0.Forest
