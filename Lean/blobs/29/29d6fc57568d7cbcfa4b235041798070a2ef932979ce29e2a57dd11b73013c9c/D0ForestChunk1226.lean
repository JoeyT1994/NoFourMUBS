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
def state_1594647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1594647 : String := "44400A4143420A444009090A0A43420A4440080A0A0A400A410A434205440A0A0A"
theorem cover_1594647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594647 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1594647)
  decide +kernel
#print axioms cover_1594647

def state_1594682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1594682 : String := "4105434405420A05440506"
theorem cover_1594682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594682 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1594682)
  decide +kernel
#print axioms cover_1594682

def state_1594694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1594694 : String := "434405424009090909"
theorem cover_1594694 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594694 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1594694)
  decide +kernel
#print axioms cover_1594694

def state_1594705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 48)))
def hex_1594705 : String := "4240054143090943440742074005074408420840050705"
theorem cover_1594705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1594705)
  decide +kernel
#print axioms cover_1594705

def state_1594729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 49)))
def hex_1594729 : String := "40410A0A414344420709420A400909440A0A4344420A400A07420A400A41070A0A"
theorem cover_1594729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1594729)
  decide +kernel
#print axioms cover_1594729

def state_1594763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
def hex_1594763 : String := "4105434405424005090505"
theorem cover_1594763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594763 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1594763)
  decide +kernel
#print axioms cover_1594763

def state_1594774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
def hex_1594774 : String := "410943444240054107070542404109434409420A090A410943440742070744420707420A4009074005094442400541054309050542400A41090A400509"
theorem cover_1594774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594774 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1594774)
  decide +kernel
#print axioms cover_1594774

def state_1594835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 24)))
def hex_1594835 : String := "444240054109080542400A0A40054109434405420A06440506"
theorem cover_1594835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594835 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1594835)
  decide +kernel
#print axioms cover_1594835

def state_1594861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1594861 : String := "41064342440A060606"
theorem cover_1594861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1594861)
  decide +kernel
#print axioms cover_1594861

def state_1594871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1594871 : String := "434244400A410A43420A4409080A400641060A444006090642440A0606"
theorem cover_1594871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594871 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1594871)
  decide +kernel
#print axioms cover_1594871
end Mub6.Numerical.CircleFullD0.Forest
