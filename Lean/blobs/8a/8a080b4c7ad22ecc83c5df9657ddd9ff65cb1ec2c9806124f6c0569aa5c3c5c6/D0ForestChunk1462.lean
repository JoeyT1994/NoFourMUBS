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
def state_1651639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 27 else 45)))
def hex_1651639 : String := "434109444009060941444005074009424306074306054440424341090A054309050740424309410908094243060743094144054005074407400907"
theorem cover_1651639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1651639)
  decide +kernel
#print axioms cover_1651639

def state_1651698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 27 else 45)))
def hex_1651698 : String := "4309414405094440054342410544050905054009430942410544050905"
theorem cover_1651698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651698 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1651698)
  decide +kernel
#print axioms cover_1651698

def state_1651729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 44)))
def hex_1651729 : String := "42434144400842080A090A084341090A06"
theorem cover_1651729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1651729)
  decide +kernel
#print axioms cover_1651729

def state_1651747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 27 else 44)))
def hex_1651747 : String := "4341444042430607434109440A09070740424306414407090A430941090A42064306074440420A0A0740420A0A420643060741440707440707"
theorem cover_1651747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1651747)
  decide +kernel
#print axioms cover_1651747

def state_1651806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 54 else 44)))
def hex_1651806 : String := "4440424309054309054243414407094407400906074341094440090709074009424309414407094407400907430941094440050709"
theorem cover_1651806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1651806)
  decide +kernel
#print axioms cover_1651806
end Mub6.Numerical.CircleFullD0.Forest
