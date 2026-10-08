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
def state_1049476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
def hex_1049476 : String := "434440414206064206060640414243440640410642060606064344064041420606420606060642434406404241060641060606064309064106420606440606"
theorem cover_1049476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1049476)
  decide +kernel
#print axioms cover_1049476

def state_1049539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_1049539 : String := "4106420606"
theorem cover_1049539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049539 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1049539)
  decide +kernel
#print axioms cover_1049539

def state_1049545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
def hex_1049545 : String := "4409404142430944094041424309440908090909090909"
theorem cover_1049545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049545 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1049545)
  decide +kernel
#print axioms cover_1049545

def state_1049569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_1049569 : String := "404143094406060909"
theorem cover_1049569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049569 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1049569)
  decide +kernel
#print axioms cover_1049569

def state_1049583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_1049583 : String := "404143424406060906430906410606"
theorem cover_1049583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049583 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1049583)
  decide +kernel
#print axioms cover_1049583

def state_1049599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
def hex_1049599 : String := "414342444041424307050742060706404105070844400709074244060544060543424440414206060906400741420606060942064406400706"
theorem cover_1049599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049599 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1049599)
  decide +kernel
#print axioms cover_1049599

def state_1049656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
def hex_1049656 : String := "414342060806430906"
theorem cover_1049656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049656 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1049656)
  decide +kernel
#print axioms cover_1049656

def state_1049665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
def hex_1049665 : String := "440940414307424440070607070909"
theorem cover_1049665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1049665)
  decide +kernel
#print axioms cover_1049665

def state_1049680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
def hex_1049680 : String := "424406404105060644404106060640414342060805434206060606"
theorem cover_1049680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1049680)
  decide +kernel
#print axioms cover_1049680

def state_1049707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_1049707 : String := "4342440940414309420609090909424406064406400A06"
theorem cover_1049707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049707 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1049707)
  decide +kernel
#print axioms cover_1049707
end Mub6.Numerical.CircleFullD0.Forest
