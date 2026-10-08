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
def state_1016134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
def hex_1016134 : String := "44420841084340440808080808"
theorem cover_1016134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1016134)
  decide +kernel
#print axioms cover_1016134

def state_1016148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
def hex_1016148 : String := "404442414305400A444207050A0505420A414305400A44050A054442414305404407080705054241434044050606084305094143050605"
theorem cover_1016148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016148 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1016148)
  decide +kernel
#print axioms cover_1016148

def state_1016204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
def hex_1016204 : String := "44420A4143400A44424143050A0505420A4143050A05400A44420A4143400A4442080508400A4408080A0A0A0A"
theorem cover_1016204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016204 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 45) (hex := hex_1016204)
  decide +kernel
#print axioms cover_1016204

def state_1016249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
def hex_1016249 : String := "4442410807414340444207054208414305080544070840444207410807080843054044070A07420841434044420841060508080843400A4405080A"
theorem cover_1016249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016249 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1016249)
  decide +kernel
#print axioms cover_1016249

def state_1016309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
def hex_1016309 : String := "4340444241064305400505060606404442410743400744090740074409070707444241094306404409420806060606"
theorem cover_1016309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016309 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1016309)
  decide +kernel
#print axioms cover_1016309

def state_1016357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 60 else 44)))
def hex_1016357 : String := "05"
theorem cover_1016357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016357 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1016357)
  decide +kernel
#print axioms cover_1016357
end Mub6.Numerical.CircleFullD0.Forest
