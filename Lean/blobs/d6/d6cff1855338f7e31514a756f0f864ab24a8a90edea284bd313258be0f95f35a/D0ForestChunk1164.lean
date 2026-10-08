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
def state_1579821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 132) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 207)))
def hex_1579821 : String := "42444340410A420A440A06414205440805050A4340060506444340410642440706064108424443050505080606"
theorem cover_1579821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1579821)
  decide +kernel
#print axioms cover_1579821

def state_1579866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 133) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 207)))
def hex_1579866 : String := "424443404142050705050A4305400605444340074142050705400741420A06420507430706"
theorem cover_1579866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1579866)
  decide +kernel
#print axioms cover_1579866

def state_1579903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 207)))
def hex_1579903 : String := "4142444305050544080842054443054041420505050505"
theorem cover_1579903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1579903)
  decide +kernel
#print axioms cover_1579903

def state_1579926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 211 else 207)))
def hex_1579926 : String := "404106420A0641420A440A06420A4443400A050A430506"
theorem cover_1579926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1579926)
  decide +kernel
#print axioms cover_1579926

def state_1579950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 192 else (if j.val < 4 then 105 else 103)))
def hex_1579950 : String := "444340414205444305050505050A4305400A05"
theorem cover_1579950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579950 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1579950)
  decide +kernel
#print axioms cover_1579950

def state_1579971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 206)))
def hex_1579971 : String := "404142444306400A0A4305400A054443400706400909430740074142440505070742444305080544430607074142054443054009054305054205440505"
theorem cover_1579971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1579971)
  decide +kernel
#print axioms cover_1579971
end Mub6.Numerical.CircleFullD0.Forest
