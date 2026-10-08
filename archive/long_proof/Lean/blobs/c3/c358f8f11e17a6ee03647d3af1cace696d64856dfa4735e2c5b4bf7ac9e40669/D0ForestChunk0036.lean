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
def state_946096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 106)))
def hex_946096 : String := "404244410707414340420706070743404207440506070744414340080507430508414340060A404207060743054042440707080742074407410707"
theorem cover_946096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_946096)
  decide +kernel
#print axioms cover_946096

def state_946155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 106)))
def hex_946155 : String := "4042440707444107074107434008070707"
theorem cover_946155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946155 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_946155)
  decide +kernel
#print axioms cover_946155

def state_946173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 107)))
def hex_946173 : String := "40424144430A4009070644434006420707404207410607074306094106444306400642070A0642410A4407070A"
theorem cover_946173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946173 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_946173)
  decide +kernel
#print axioms cover_946173

def state_946218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 107)))
def hex_946218 : String := "40424109440709414443404207060705094443404207410644070607074340060A094207410707"
theorem cover_946218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_946218)
  decide +kernel
#print axioms cover_946218

def state_946258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 106)))
def hex_946258 : String := "4340424144054305070505054042410707414407434008070708420707"
theorem cover_946258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946258 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_946258)
  decide +kernel
#print axioms cover_946258

def state_946290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 204 else (if j.val < 4 then 68 else 107)))
def hex_946290 : String := "4144434042410605050540420741070707434006424106050640094207074443054042050505430540420941064405054207410705"
theorem cover_946290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_946290)
  decide +kernel
#print axioms cover_946290
end Mub6.Numerical.CircleFullD0.Forest
