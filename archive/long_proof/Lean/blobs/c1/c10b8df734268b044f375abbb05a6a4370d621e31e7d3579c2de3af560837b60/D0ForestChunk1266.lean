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
def state_1604303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 101)))
def hex_1604303 : String := "4341444007429F08400708444007429F070741444006429F060644400742070707"
theorem cover_1604303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 33) (hex := hex_1604303)
  decide +kernel
#print axioms cover_1604303

def state_1604336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 101)))
def hex_1604336 : String := "429F434108444042050A0505414408084440429F4107074205084042050705"
theorem cover_1604336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604336 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1604336)
  decide +kernel
#print axioms cover_1604336

def state_1604367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 50)))
def hex_1604367 : String := "434108440A400A0841084440424341090A41054409070942430A41080A084042434108070606424308410844080808"
theorem cover_1604367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1604367)
  decide +kernel
#print axioms cover_1604367

def state_1604415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 51)))
def hex_1604415 : String := "4243414442400743410807410607400643070642400643050606444240074305070707410644420706064341060706"
theorem cover_1604415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604415 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1604415)
  decide +kernel
#print axioms cover_1604415

def state_1604464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 51)))
def hex_1604464 : String := "414440424308410805080840420508054440420543054107050505"
theorem cover_1604464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1604464)
  decide +kernel
#print axioms cover_1604464

def state_1604491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 51)))
def hex_1604491 : String := "41444042414308064344420508050606084042410505060844404243054144420506050543410707410606420543054108054042050705"
theorem cover_1604491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1604491)
  decide +kernel
#print axioms cover_1604491
end Mub6.Numerical.CircleFullD0.Forest
