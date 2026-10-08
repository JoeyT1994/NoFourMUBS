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
def state_1554453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
def hex_1554453 : String := "4244080844064143050806"
theorem cover_1554453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554453 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1554453)
  decide +kernel
#print axioms cover_1554453

def state_1554464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 85)))
def hex_1554464 : String := "4042074407434140070A07074244070A440A0A"
theorem cover_1554464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1554464)
  decide +kernel
#print axioms cover_1554464

def state_1554484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 84)))
def hex_1554484 : String := "41434042444143054007060641054305400706440641050606404244070A44074341050A07420A440A0A4306400706"
theorem cover_1554484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1554484)
  decide +kernel
#print axioms cover_1554484

def state_1554532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 85)))
def hex_1554532 : String := "43404244410543054042444105070505050505054042444341050A0A434105400A050A4443050A43050A42440A0A440A05"
theorem cover_1554532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1554532)
  decide +kernel
#print axioms cover_1554532

def state_1554582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 85)))
def hex_1554582 : String := "404244414306404207060606414305404244410507050542440605054306400906440641050606"
theorem cover_1554582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1554582)
  decide +kernel
#print axioms cover_1554582

def state_1554621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 85)))
def hex_1554621 : String := "40424407434140420744070A0A400707074443414007060607434140424407050505400906410A07424443060743410A060A4443060A434105060A"
theorem cover_1554621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554621 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1554621)
  decide +kernel
#print axioms cover_1554621
end Mub6.Numerical.CircleFullD0.Forest
