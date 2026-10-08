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
def state_1502049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 29)))
def hex_1502049 : String := "444041090641424344060744050707424309050640410A42430908094142430A44400807080A42434440094107070A44400941070540084108084307440707"
theorem cover_1502049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1502049)
  decide +kernel
#print axioms cover_1502049

def state_1502112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 29)))
def hex_1502112 : String := "4344060A44060A"
theorem cover_1502112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502112 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1502112)
  decide +kernel
#print axioms cover_1502112

def state_1502119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
def hex_1502119 : String := "4243440640064143064244064006410A06060644064041090641424344094009414342090709094405400841420507094306094243090906430606"
theorem cover_1502119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502119 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 59) (hex := hex_1502119)
  decide +kernel
#print axioms cover_1502119

def state_1502179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 28)))
def hex_1502179 : String := "40094142050905"
theorem cover_1502179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1502179)
  decide +kernel
#print axioms cover_1502179

def state_1502186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 29)))
def hex_1502186 : String := "40414208090941424443400941420507050543400841420844070842084407080844430707434009074008074244054340094142050905054409430909"
theorem cover_1502186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1502186)
  decide +kernel
#print axioms cover_1502186

def state_1502254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 56)))
def hex_1502254 : String := "414205404344070744050743070705"
theorem cover_1502254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1502254)
  decide +kernel
#print axioms cover_1502254
end Mub6.Numerical.CircleFullD0.Forest
