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
def state_2307303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
def hex_2307303 : String := "414243074440410743060A07070742430644060643064440410706064041070606"
theorem cover_2307303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2307303)
  decide +kernel
#print axioms cover_2307303

def state_2307336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 47)))
def hex_2307336 : String := "4041424344404107420606060744404107050740050707424306054344404107050606444005410705054107420606"
theorem cover_2307336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307336 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2307336)
  decide +kernel
#print axioms cover_2307336

def state_2307383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 23)))
def hex_2307383 : String := "444041074243444041074243060707070744404142080708410742430707074008070707404107424307070707"
theorem cover_2307383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_2307383)
  decide +kernel
#print axioms cover_2307383

def state_2307429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 23)))
def hex_2307429 : String := "420606"
theorem cover_2307429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2307429)
  decide +kernel
#print axioms cover_2307429

def state_2307433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 23)))
def hex_2307433 : String := "44404241430644400506050641430644400506050606400506"
theorem cover_2307433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2307433)
  decide +kernel
#print axioms cover_2307433

def state_2307459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 46)))
def hex_2307459 : String := "404241434406064440084243060843060808430608414344404241070607060744400842430608070843060842064143060706"
theorem cover_2307459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2307459)
  decide +kernel
#print axioms cover_2307459

def state_2307510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 47)))
def hex_2307510 : String := "40424143060505414306070606"
theorem cover_2307510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307510 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2307510)
  decide +kernel
#print axioms cover_2307510

def state_2307523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
def hex_2307523 : String := "444143050543054206404405060541430642404441070606060706"
theorem cover_2307523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307523 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2307523)
  decide +kernel
#print axioms cover_2307523
end Mub6.Numerical.CircleFullD0.Forest
