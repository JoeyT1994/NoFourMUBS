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
def state_1572153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_1572153 : String := "424407404305050544404306410707064043414207440743050742054406054142074407400A07420A44400A07400A05430507"
theorem cover_1572153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1572153)
  decide +kernel
#print axioms cover_1572153

def state_1572204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_1572204 : String := "4244060544404306410606064043054142054441400A0505050505"
theorem cover_1572204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572204 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1572204)
  decide +kernel
#print axioms cover_1572204

def state_1572231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_1572231 : String := "41424043050505404344414205430544050505414205430505054441420544400A05400A0542054405054142054006050543050542054043050505"
theorem cover_1572231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1572231)
  decide +kernel
#print axioms cover_1572231

def state_1572290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1572290 : String := "4205434405054441060505"
theorem cover_1572290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1572290)
  decide +kernel
#print axioms cover_1572290

def state_1572301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1572301 : String := "40424309410905434144420543400905400905094405094144420940094305050944420540090509420543054144050505"
theorem cover_1572301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1572301)
  decide +kernel
#print axioms cover_1572301
end Mub6.Numerical.CircleFullD0.Forest
