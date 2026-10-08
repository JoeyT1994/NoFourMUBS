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
def state_2578458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 19)))
def hex_2578458 : String := "434044090944410A424340094441084342084009080807094340444109090944410ADC410ADC4009444108420843400908080941070740094441090909"
theorem cover_2578458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578458 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_2578458)
  decide +kernel
#print axioms cover_2578458

def state_2578523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 18)))
def hex_2578523 : String := "414443420609090906"
theorem cover_2578523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578523 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2578523)
  decide +kernel
#print axioms cover_2578523

def state_2578535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 96 else 36)))
def hex_2578535 : String := "424041090605404144434209070909444342060742090943060941444305420540070543054205400905444305420540410707054305420540410944090605"
theorem cover_2578535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578535 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2578535)
  decide +kernel
#print axioms cover_2578535

def state_2578598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 97 else 36)))
def hex_2578598 : String := "424009084041090941444342084009060808444342400905404109094108440708420840090843420840090808"
theorem cover_2578598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578598 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2578598)
  decide +kernel
#print axioms cover_2578598

def state_2578643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 37)))
def hex_2578643 : String := "4342400608404109064144430508084443054205400605064240090840094108440808"
theorem cover_2578643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2578643)
  decide +kernel
#print axioms cover_2578643

def state_2578680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 46 else (if j.val < 4 then 96 else 36)))
def hex_2578680 : String := "424006410506400641444342050542400605404107070543064206400605440A06"
theorem cover_2578680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2578680)
  decide +kernel
#print axioms cover_2578680
end Mub6.Numerical.CircleFullD0.Forest
