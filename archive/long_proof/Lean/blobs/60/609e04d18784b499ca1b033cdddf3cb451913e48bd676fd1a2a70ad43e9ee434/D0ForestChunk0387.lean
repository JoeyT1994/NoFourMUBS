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
def state_1030367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
def hex_1030367 : String := "4243080843080A"
theorem cover_1030367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1030367)
  decide +kernel
#print axioms cover_1030367

def state_1030376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 30)))
def hex_1030376 : String := "4344404105050540414205430544054009054205050544400A0740410942070A07"
theorem cover_1030376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030376 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1030376)
  decide +kernel
#print axioms cover_1030376

def state_1030411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
def hex_1030411 : String := "404142054305440540414205050505420505410505"
theorem cover_1030411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1030411)
  decide +kernel
#print axioms cover_1030411

def state_1030435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 102 else (if j.val < 4 then 36 else 61)))
def hex_1030435 : String := "43440505444041420505050540414206064205064142050505"
theorem cover_1030435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030435 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_1030435)
  decide +kernel
#print axioms cover_1030435

def state_1030460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 36 else 61)))
def hex_1030460 : String := "4344050644404142430544054006050742050741420505054041064206064142430544050843050842054305440505"
theorem cover_1030460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030460 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1030460)
  decide +kernel
#print axioms cover_1030460

def state_1030507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
def hex_1030507 : String := "42430544054041420505050543054440410505054041420606420505410505"
theorem cover_1030507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1030507)
  decide +kernel
#print axioms cover_1030507

def state_1030538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
def hex_1030538 : String := "414205430544054041080505420505"
theorem cover_1030538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030538 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1030538)
  decide +kernel
#print axioms cover_1030538

def state_1030554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 60)))
def hex_1030554 : String := "4041420A43440A400A41420A0A0A0A0A4142074344054041050505064207430506"
theorem cover_1030554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030554 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1030554)
  decide +kernel
#print axioms cover_1030554

def state_1030590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 61)))
def hex_1030590 : String := "4344400A41420743050A0A40094109420943440540090509440A09"
theorem cover_1030590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030590 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1030590)
  decide +kernel
#print axioms cover_1030590
end Mub6.Numerical.CircleFullD0.Forest
