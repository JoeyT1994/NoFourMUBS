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
def state_1504423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 29)))
def hex_1504423 : String := "44404142430705074205074107074041424344070A4407400A06074243440740410707074405404107420807070741424307060742430744050607"
theorem cover_1504423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504423 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1504423)
  decide +kernel
#print axioms cover_1504423

def state_1504482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 29)))
def hex_1504482 : String := "4307440707"
theorem cover_1504482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504482 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1504482)
  decide +kernel
#print axioms cover_1504482

def state_1504489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 29)))
def hex_1504489 : String := "4440060840414342440707074244074041070707074308424406404143060706410707064143070708"
theorem cover_1504489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504489 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1504489)
  decide +kernel
#print axioms cover_1504489

def state_1504531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 58)))
def hex_1504531 : String := "4041050505"
theorem cover_1504531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504531 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1504531)
  decide +kernel
#print axioms cover_1504531

def state_1504536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 59)))
def hex_1504536 : String := "40414243444041070505404143070743070741070744054041420507050543070742434405404143070509410705054307074142434405070507420507"
theorem cover_1504536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1504536)
  decide +kernel
#print axioms cover_1504536

def state_1504597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 29)))
def hex_1504597 : String := "43084407400707"
theorem cover_1504597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1504597)
  decide +kernel
#print axioms cover_1504597

def state_1504604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
def hex_1504604 : String := "41424344074043070707444007074041074243070507064307074243084405404142050742050541070508"
theorem cover_1504604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504604 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1504604)
  decide +kernel
#print axioms cover_1504604

def state_1504648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 28)))
def hex_1504648 : String := "4041420507054142050705"
theorem cover_1504648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504648 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1504648)
  decide +kernel
#print axioms cover_1504648
end Mub6.Numerical.CircleFullD0.Forest
