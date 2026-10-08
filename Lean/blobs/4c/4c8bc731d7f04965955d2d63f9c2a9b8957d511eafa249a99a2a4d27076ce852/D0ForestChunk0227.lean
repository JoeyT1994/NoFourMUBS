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
def state_991968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 44)))
def hex_991968 : String := "44414240430844090909400806094142404344410508054441050905430605064209400809"
theorem cover_991968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_991968)
  decide +kernel
#print axioms cover_991968

def state_992006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 88)))
def hex_992006 : String := "4142404344094142054009090944094142054044090505094309094043440841060844C6414240444309094306410509060609434409064409410609420909"
theorem cover_992006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_992006)
  decide +kernel
#print axioms cover_992006

def state_992070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 89)))
def hex_992070 : String := "424044434105094105050544430505054044434106420906414240444305050505064240090940440806064306410642050606"
theorem cover_992070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_992070)
  decide +kernel
#print axioms cover_992070

def state_992121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 89)))
def hex_992121 : String := "42404409090940440943094142090909440909"
theorem cover_992121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_992121)
  decide +kernel
#print axioms cover_992121

def state_992140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
def hex_992140 : String := "434409410609444142090609410609"
theorem cover_992140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992140 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_992140)
  decide +kernel
#print axioms cover_992140

def state_992156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
def hex_992156 : String := "420506"
theorem cover_992156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992156 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_992156)
  decide +kernel
#print axioms cover_992156

def state_992160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 45)))
def hex_992160 : String := "40444305050505"
theorem cover_992160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992160 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_992160)
  decide +kernel
#print axioms cover_992160
end Mub6.Numerical.CircleFullD0.Forest
