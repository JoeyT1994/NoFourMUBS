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
def state_2568382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 114 else 95)))
def hex_2568382 : String := "42444140430909430909404342440705094205054342440A4109060942440A4109050941400909400543090909"
theorem cover_2568382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568382 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2568382)
  decide +kernel
#print axioms cover_2568382

def state_2568427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 115 else 95)))
def hex_2568427 : String := "4244414043090643090940434205050543420A090841400909400543090509"
theorem cover_2568427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2568427)
  decide +kernel
#print axioms cover_2568427

def state_2568458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 95)))
def hex_2568458 : String := "43424441404309090940430A0A0A410940430609060942444140430909090A4109404309090A09"
theorem cover_2568458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568458 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_2568458)
  decide +kernel
#print axioms cover_2568458

def state_2568497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_2568497 : String := "43424144050606414405074440430505050642414405404342050542050505440A4043060A064144054043070705440A4043420A07420A090A"
theorem cover_2568497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568497 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2568497)
  decide +kernel
#print axioms cover_2568497

def state_2568557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 46)))
def hex_2568557 : String := "4241440A404307070A44070A41444043420707070A404342414407400708074144400705084407400708420741440740070A070A440A40070A"
theorem cover_2568557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568557 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2568557)
  decide +kernel
#print axioms cover_2568557

def state_2568614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 46)))
def hex_2568614 : String := "424144070A0741440A4043420707070A44070A"
theorem cover_2568614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568614 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2568614)
  decide +kernel
#print axioms cover_2568614

def state_2568633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_2568633 : String := "430A0A"
theorem cover_2568633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2568633)
  decide +kernel
#print axioms cover_2568633
end Mub6.Numerical.CircleFullD0.Forest
