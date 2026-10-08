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
def state_1520561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 4)))
def hex_1520561 : String := "43440840424144080508414408050842080844404207410907094042410943440709074143440909094344084042440706440843060608440709420909"
theorem cover_1520561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1520561)
  decide +kernel
#print axioms cover_1520561

def state_1520622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_1520622 : String := "41094209430809"
theorem cover_1520622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1520622)
  decide +kernel
#print axioms cover_1520622

def state_1520631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
def hex_1520631 : String := "42094443050909"
theorem cover_1520631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520631 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1520631)
  decide +kernel
#print axioms cover_1520631

def state_1520640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
def hex_1520640 : String := "4340414209094244434007090743404409090909444340424105074105080809434042094409090909410942090940410942090909"
theorem cover_1520640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520640 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1520640)
  decide +kernel
#print axioms cover_1520640

def state_1520693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
def hex_1520693 : String := "4340444109420909090909"
theorem cover_1520693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1520693)
  decide +kernel
#print axioms cover_1520693

def state_1520707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
def hex_1520707 : String := "42414405054443404241050805054042410644070641054408060943404244050505054042060609410544430540424105440505050543054042060505"
theorem cover_1520707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520707 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1520707)
  decide +kernel
#print axioms cover_1520707

def state_1520768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
def hex_1520768 : String := "42410544050505"
theorem cover_1520768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520768 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1520768)
  decide +kernel
#print axioms cover_1520768

def state_1520775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 10)))
def hex_1520775 : String := "4042410944090941094443404206064209430509064340060906420909"
theorem cover_1520775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1520775)
  decide +kernel
#print axioms cover_1520775
end Mub6.Numerical.CircleFullD0.Forest
