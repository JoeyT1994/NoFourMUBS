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
def state_1029643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 98) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
def hex_1029643 : String := "4243444041060641420505050644400941090A0943444006414205070506444007414243440A070907420A07400741074243060707"
theorem cover_1029643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1029643)
  decide +kernel
#print axioms cover_1029643

def state_1029696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 99) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
def hex_1029696 : String := "424344400A054006410505440A400A41090A4344400705400606440A4007414243070A07420A07"
theorem cover_1029696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029696 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1029696)
  decide +kernel
#print axioms cover_1029696

def state_1029735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
def hex_1029735 : String := "40064142090742430609430607"
theorem cover_1029735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1029735)
  decide +kernel
#print axioms cover_1029735

def state_1029748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 30)))
def hex_1029748 : String := "444041090A4142094344400A41090A0909420A0A4009410942094344400741074209070709"
theorem cover_1029748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029748 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1029748)
  decide +kernel
#print axioms cover_1029748

def state_1029786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
def hex_1029786 : String := "42430808434440080808444041084208080808"
theorem cover_1029786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029786 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1029786)
  decide +kernel
#print axioms cover_1029786

def state_1029806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 30)))
def hex_1029806 : String := "434440414207430507420543050707404108420743440509090744404107070709"
theorem cover_1029806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1029806)
  decide +kernel
#print axioms cover_1029806

def state_1029843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 98) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
def hex_1029843 : String := "42434405084440410842050508084344050844404108424305440505430544050808400808"
theorem cover_1029843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1029843)
  decide +kernel
#print axioms cover_1029843
end Mub6.Numerical.CircleFullD0.Forest
