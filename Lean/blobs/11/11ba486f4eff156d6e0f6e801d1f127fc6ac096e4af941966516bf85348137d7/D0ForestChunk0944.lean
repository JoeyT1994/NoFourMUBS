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
def state_1527103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 66 else 88)))
def hex_1527103 : String := "40424408414306404206060606440641070606"
theorem cover_1527103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1527103)
  decide +kernel
#print axioms cover_1527103

def state_1527124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 117) else (if j.val < 3 then 180 else (if j.val < 4 then 67 else 88)))
def hex_1527124 : String := "44414308404209440809084306400506414340420944410905090909430605"
theorem cover_1527124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527124 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1527124)
  decide +kernel
#print axioms cover_1527124

def state_1527155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 117) else (if j.val < 3 then 181 else (if j.val < 4 then 67 else 88)))
def hex_1527155 : String := "44414308404208080843064042050806414340424441070607070740424409054441070507094306400506"
theorem cover_1527155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527155 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1527155)
  decide +kernel
#print axioms cover_1527155

def state_1527198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 195 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
def hex_1527198 : String := "42440841090644084143060906"
theorem cover_1527198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527198 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1527198)
  decide +kernel
#print axioms cover_1527198

def state_1527211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 89)))
def hex_1527211 : String := "41430740420907074340424441070607070640424441090541070544410743060507420907"
theorem cover_1527211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1527211)
  decide +kernel
#print axioms cover_1527211

def state_1527248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 33 else 44)))
def hex_1527248 : String := "4441430740424441074307404244080707070707074340424406070706404244414308400A080841074306400A06440A07424408070707"
theorem cover_1527248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1527248)
  decide +kernel
#print axioms cover_1527248

def state_1527304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 32 else 44)))
def hex_1527304 : String := "4042444143064009060641430640420505060644090A06"
theorem cover_1527304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1527304)
  decide +kernel
#print axioms cover_1527304
end Mub6.Numerical.CircleFullD0.Forest
