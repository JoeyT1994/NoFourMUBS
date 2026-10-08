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
def state_2604252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_2604252 : String := "4344400A41420907420907400A0A444006410608400A414244060A44060A42444308080A44080A"
theorem cover_2604252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2604252)
  decide +kernel
#print axioms cover_2604252

def state_2604293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_2604293 : String := "434409430944090A440544404105420543440506050540410542050A05"
theorem cover_2604293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_2604293)
  decide +kernel
#print axioms cover_2604293

def state_2604322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_2604322 : String := "434442090742430A44400A090A430A444006070A4406424440060540410A430A44050A41054344050A054406400A4105430A420506"
theorem cover_2604322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2604322)
  decide +kernel
#print axioms cover_2604322

def state_2604376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_2604376 : String := "43440941430944090A094408414440424308054309050540420A430A44050A42054344050A054408400A42054309410508"
theorem cover_2604376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604376 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2604376)
  decide +kernel
#print axioms cover_2604376

def state_2604426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_2604426 : String := "4441420907094142430A44090A430A444007070A42430944090A430A44070A"
theorem cover_2604426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604426 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2604426)
  decide +kernel
#print axioms cover_2604426

def state_2604458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_2604458 : String := "4142400605064208400807"
theorem cover_2604458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604458 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2604458)
  decide +kernel
#print axioms cover_2604458
end Mub6.Numerical.CircleFullD0.Forest
