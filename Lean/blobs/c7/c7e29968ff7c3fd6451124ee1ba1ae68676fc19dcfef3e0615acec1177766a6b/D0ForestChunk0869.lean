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
def state_1509159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 31)))
def hex_1509159 : String := "414342050542444041064305060605054342444005410505050542444041430542060543050706064440054105430542050505"
theorem cover_1509159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1509159)
  decide +kernel
#print axioms cover_1509159

def state_1509210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 31)))
def hex_1509210 : String := "414306064342060842064441060806"
theorem cover_1509210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1509210)
  decide +kernel
#print axioms cover_1509210

def state_1509225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 15)))
def hex_1509225 : String := "44404143084244084005080808084005410508"
theorem cover_1509225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1509225)
  decide +kernel
#print axioms cover_1509225

def state_1509244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
def hex_1509244 : String := "4308424441404308420A4408410808084043080A08414043420505424441404305070A0A410505444140050805054308420608404305420A0543080A08"
theorem cover_1509244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1509244)
  decide +kernel
#print axioms cover_1509244

def state_1509311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
def hex_1509311 : String := "4006410505"
theorem cover_1509311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509311 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1509311)
  decide +kernel
#print axioms cover_1509311

def state_1509317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
def hex_1509317 : String := "4143060909"
theorem cover_1509317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509317 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1509317)
  decide +kernel
#print axioms cover_1509317

def state_1509322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
def hex_1509322 : String := "414344420506424041434207060909414342054405404109060A050A40064143064406424006050606440542054009414344054205050505434406420A060A"
theorem cover_1509322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1509322)
  decide +kernel
#print axioms cover_1509322

def state_1509385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 14)))
def hex_1509385 : String := "44054041090505"
theorem cover_1509385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509385 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1509385)
  decide +kernel
#print axioms cover_1509385
end Mub6.Numerical.CircleFullD0.Forest
