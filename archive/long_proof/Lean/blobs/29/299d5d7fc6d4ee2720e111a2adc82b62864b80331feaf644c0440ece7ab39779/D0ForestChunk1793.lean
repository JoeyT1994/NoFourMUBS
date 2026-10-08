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
def state_2303467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 45)))
def hex_2303467 : String := "4440414305420844050A0A0A40414306420A440A40410A06060606"
theorem cover_2303467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303467 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2303467)
  decide +kernel
#print axioms cover_2303467

def state_2303495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 90)))
def hex_2303495 : String := "404143050543420605420A44054041050A0505"
theorem cover_2303495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303495 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2303495)
  decide +kernel
#print axioms cover_2303495

def state_2303514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
def hex_2303514 : String := "4041434208440540C405424440C40540C40A4440C40540C441050A430642440A06444041C40A064041C406064143050506"
theorem cover_2303514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303514 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2303514)
  decide +kernel
#print axioms cover_2303514

def state_2303565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 90)))
def hex_2303565 : String := "4041434207440740070A07070A"
theorem cover_2303565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2303565)
  decide +kernel
#print axioms cover_2303565

def state_2303578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
def hex_2303578 : String := "4041434244070A444041430A07070A4041430A4207440A0A0A0A42074440070A4041434207440740070A07070A430707410A0A"
theorem cover_2303578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_2303578)
  decide +kernel
#print axioms cover_2303578

def state_2303631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 90)))
def hex_2303631 : String := "414342440540C405440540C40542444007054041060741050744400605400641054305420605434207444007054041C4070A420744074007410A07"
theorem cover_2303631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303631 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2303631)
  decide +kernel
#print axioms cover_2303631

def state_2303690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 90)))
def hex_2303690 : String := "4105430A0A"
theorem cover_2303690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2303690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2303690)
  decide +kernel
#print axioms cover_2303690
end Mub6.Numerical.CircleFullD0.Forest
