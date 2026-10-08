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
def state_2566520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_2566520 : String := "424340414405420505070540070543404105440543420740070507054041050705"
theorem cover_2566520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2566520)
  decide +kernel
#print axioms cover_2566520

def state_2566558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_2566558 : String := "424341404405420A4305050540070A410A0A4341404405430505054044074342074144050A07070A414044054205050540070A"
theorem cover_2566558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2566558)
  decide +kernel
#print axioms cover_2566558

def state_2566613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
def hex_2566613 : String := "404243090943414405404243050543050505440A4042074307070641440540420943410507070544070A420A0A"
theorem cover_2566613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566613 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2566613)
  decide +kernel
#print axioms cover_2566613

def state_2566660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 47)))
def hex_2566660 : String := "430641440940090609"
theorem cover_2566660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2566660)
  decide +kernel
#print axioms cover_2566660

def state_2566670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 56 else 47)))
def hex_2566670 : String := "41444042430609430841440540080544400705404306090642064305054042064306E20644404206430641440706060606"
theorem cover_2566670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2566670)
  decide +kernel
#print axioms cover_2566670

def state_2566721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 94)))
def hex_2566721 : String := "404243090943414440430505054043420941054405400705420741050743050544400709404307070A41444007054042074307070A440740070A420A43050A"
theorem cover_2566721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566721 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_2566721)
  decide +kernel
#print axioms cover_2566721
end Mub6.Numerical.CircleFullD0.Forest
