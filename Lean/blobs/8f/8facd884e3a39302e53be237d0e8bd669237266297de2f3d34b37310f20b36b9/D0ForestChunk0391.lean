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
def state_1031369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 62)))
def hex_1031369 : String := "43444041090A41420943440506094243050943050A40064109420943060944400941090A09"
theorem cover_1031369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031369 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1031369)
  decide +kernel
#print axioms cover_1031369

def state_1031409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
def hex_1031409 : String := "41424306440A06074243060A07"
theorem cover_1031409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031409 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1031409)
  decide +kernel
#print axioms cover_1031409

def state_1031423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 202) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
def hex_1031423 : String := "4243444006050644400A41420943050942050A400941094209430609434440064107050644400741070707"
theorem cover_1031423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031423 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1031423)
  decide +kernel
#print axioms cover_1031423

def state_1031466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 203) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
def hex_1031466 : String := "4243440506440A400A41420A43050A0A43444006050644400741420A070A07"
theorem cover_1031466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031466 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1031466)
  decide +kernel
#print axioms cover_1031466

def state_1031497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 125)))
def hex_1031497 : String := "40064142430609064243064440064106060607"
theorem cover_1031497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031497 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1031497)
  decide +kernel
#print axioms cover_1031497

def state_1031516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 62)))
def hex_1031516 : String := "4440414209070A414243440A09094344400741420A070A070A420A43440A40074107070A404109420907414209430707424344400941090A0909430707"
theorem cover_1031516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1031516)
  decide +kernel
#print axioms cover_1031516

def state_1031578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
def hex_1031578 : String := "42434440410842070807080943444041084208080808444041084208080808"
theorem cover_1031578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1031578)
  decide +kernel
#print axioms cover_1031578
end Mub6.Numerical.CircleFullD0.Forest
