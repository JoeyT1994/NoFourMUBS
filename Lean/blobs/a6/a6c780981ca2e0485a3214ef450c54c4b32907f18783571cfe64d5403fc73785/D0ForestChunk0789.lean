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
def state_1490101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 29)))
def hex_1490101 : String := "42444043410942094406400609410942074406400609090944404341420606064142440609060643410808410942090840430A410A42444006090A0A09"
theorem cover_1490101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1490101)
  decide +kernel
#print axioms cover_1490101

def state_1490164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 38 else (if j.val < 4 then 49 else 58)))
def hex_1490164 : String := "4043414244064006070606414207064207064341420908420A084142094405090A"
theorem cover_1490164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1490164)
  decide +kernel
#print axioms cover_1490164

def state_1490197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 38 else (if j.val < 4 then 49 else 59)))
def hex_1490197 : String := "40434142074440064309094007094207440640074341050707410707434109420944430840410808084309404107070941094207444043070709400709"
theorem cover_1490197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490197 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1490197)
  decide +kernel
#print axioms cover_1490197

def state_1490259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 58)))
def hex_1490259 : String := "40064308414244064006080606"
theorem cover_1490259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490259 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1490259)
  decide +kernel
#print axioms cover_1490259

def state_1490273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 59)))
def hex_1490273 : String := "434142440605060641424440064306410606400743410505074406054244064006434107060706"
theorem cover_1490273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1490273)
  decide +kernel
#print axioms cover_1490273
end Mub6.Numerical.CircleFullD0.Forest
