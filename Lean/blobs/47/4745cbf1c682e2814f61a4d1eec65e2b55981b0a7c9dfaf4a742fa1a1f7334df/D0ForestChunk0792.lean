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
def state_1490786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
def hex_1490786 : String := "4043414244054006430605060641420506064341420544054006434144054205060505420506410505"
theorem cover_1490786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490786 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1490786)
  decide +kernel
#print axioms cover_1490786

def state_1490828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
def hex_1490828 : String := "4341424407074440064306414207060640430A0743410A4207064107074244070744064006434106064107064142074440064341080608084207440607"
theorem cover_1490828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490828 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1490828)
  decide +kernel
#print axioms cover_1490828

def state_1490892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 38 else (if j.val < 4 then 50 else 29)))
def hex_1490892 : String := "444043414207440707070743094109054043070709"
theorem cover_1490892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490892 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1490892)
  decide +kernel
#print axioms cover_1490892

def state_1490915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 42) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 58)))
def hex_1490915 : String := "43414244400609400709440640064306410906424406400643060706414244400643070507440640064341090641094207064244050706"
theorem cover_1490915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490915 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1490915)
  decide +kernel
#print axioms cover_1490915

def state_1490970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 58)))
def hex_1490970 : String := "4341094244050944064043064109060941420944404309410505090942440540430705054405404341090641420544050942050609"
theorem cover_1490970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1490970)
  decide +kernel
#print axioms cover_1490970
end Mub6.Numerical.CircleFullD0.Forest
