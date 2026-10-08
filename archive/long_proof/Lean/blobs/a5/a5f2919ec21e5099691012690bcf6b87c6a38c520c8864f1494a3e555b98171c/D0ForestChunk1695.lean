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
def state_2279959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 30)))
def hex_2279959 : String := "4140444206430906064442064341400606400606060640440605444205434106050506"
theorem cover_2279959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279959 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2279959)
  decide +kernel
#print axioms cover_2279959

def state_2279997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
def hex_2279997 : String := "09"
theorem cover_2279997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279997 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2279997)
  decide +kernel
#print axioms cover_2279997

def state_2279999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 60)))
def hex_2279999 : String := "424341400944054243050905400944424309090909414009444243410509410909094243090909400944424309090809430909"
theorem cover_2279999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2279999)
  decide +kernel
#print axioms cover_2279999

def state_2280050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 61)))
def hex_2280050 : String := "424341400944424309090909094140094409090909"
theorem cover_2280050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280050 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2280050)
  decide +kernel
#print axioms cover_2280050

def state_2280071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 30)))
def hex_2280071 : String := "400944424341400744080907410908094243070909"
theorem cover_2280071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280071 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2280071)
  decide +kernel
#print axioms cover_2280071

def state_2280092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 30)))
def hex_2280092 : String := "414009444243414009440742060940094409094140060606094243414006060906094009444243410908410606084243090509"
theorem cover_2280092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280092 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2280092)
  decide +kernel
#print axioms cover_2280092

def state_2280143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 31)))
def hex_2280143 : String := "424341400744420743074106060707410605434140094442430909090940074442070907414009444206090909"
theorem cover_2280143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2280143)
  decide +kernel
#print axioms cover_2280143
end Mub6.Numerical.CircleFullD0.Forest
