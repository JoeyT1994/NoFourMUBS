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
def state_1003706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 89)))
def hex_1003706 : String := "40444306424106404443060A43060706060606"
theorem cover_1003706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003706 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1003706)
  decide +kernel
#print axioms cover_1003706

def state_1003727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 111) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 89)))
def hex_1003727 : String := "44434142400A0940440943090A4409090941420A400A44090A09434142400A440943090940440A0A44430609064209400909410A0A"
theorem cover_1003727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1003727)
  decide +kernel
#print axioms cover_1003727

def state_1003780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 111) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 89)))
def hex_1003780 : String := "4443094142090909434142090609414208404409060609"
theorem cover_1003780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1003780)
  decide +kernel
#print axioms cover_1003780

def state_1003803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 89)))
def hex_1003803 : String := "404443414240050605054142400A4443050943060A05420905434106424044050A09054142400A0606420A05444341060941060943064106420906"
theorem cover_1003803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1003803)
  decide +kernel
#print axioms cover_1003803

def state_1003862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 44)))
def hex_1003862 : String := "44434106420906414240444306070606064207404407060643064106424044094306090606"
theorem cover_1003862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1003862)
  decide +kernel
#print axioms cover_1003862

def state_1003899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 44)))
def hex_1003899 : String := "4106404443054241060505430642410640440506060606"
theorem cover_1003899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003899 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1003899)
  decide +kernel
#print axioms cover_1003899
end Mub6.Numerical.CircleFullD0.Forest
