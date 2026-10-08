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
def state_1665568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 12)))
def hex_1665568 : String := "404209440509420644064341060906"
theorem cover_1665568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665568 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1665568)
  decide +kernel
#print axioms cover_1665568

def state_1665583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
def hex_1665583 : String := "41434007420807400909434009420944414340074209070943400942054441434007420507094340094205444143070743F109050907090909"
theorem cover_1665583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665583 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 57) (hex := hex_1665583)
  decide +kernel
#print axioms cover_1665583

def state_1665642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_1665642 : String := "4340050A40050A"
theorem cover_1665642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1665642)
  decide +kernel
#print axioms cover_1665642

def state_1665649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_1665649 : String := "434005440542414340050A0A434005440542414340050A0A4340054405424143070743F1404405070A0540050A05400544050A05400544054243410A080805"
theorem cover_1665649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 63) (hex := hex_1665649)
  decide +kernel
#print axioms cover_1665649

def state_1665712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
def hex_1665712 : String := "41074340074244410743074007420907070740074244090707"
theorem cover_1665712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665712 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1665712)
  decide +kernel
#print axioms cover_1665712

def state_1665739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
def hex_1665739 : String := "4106434206440640410643420644064041064342440605440A40414342060A0643F142060A050606060606"
theorem cover_1665739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665739 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 43) (hex := hex_1665739)
  decide +kernel
#print axioms cover_1665739

def state_1665782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
def hex_1665782 : String := "414342050806434205404441434205084205400605430542054009050505420540440909440605"
theorem cover_1665782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1665782)
  decide +kernel
#print axioms cover_1665782
end Mub6.Numerical.CircleFullD0.Forest
