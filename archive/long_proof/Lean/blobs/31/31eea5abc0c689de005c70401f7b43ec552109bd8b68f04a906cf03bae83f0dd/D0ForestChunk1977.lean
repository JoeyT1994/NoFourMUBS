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
def state_2555119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
def hex_2555119 : String := "44404205054243414409400506094144094005090943414440054209050505414440050805054005420505"
theorem cover_2555119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555119 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2555119)
  decide +kernel
#print axioms cover_2555119

def state_2555162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_2555162 : String := "43410A400A0641400A420A0A400A424443064106060644430A410A0505"
theorem cover_2555162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555162 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2555162)
  decide +kernel
#print axioms cover_2555162

def state_2555192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_2555192 : String := "424409064443404441054205054105424306090A054044054105420543400A05050543400A0640410A420A0A4105420507"
theorem cover_2555192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2555192)
  decide +kernel
#print axioms cover_2555192

def state_2555242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
def hex_2555242 : String := "4443060906"
theorem cover_2555242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555242 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2555242)
  decide +kernel
#print axioms cover_2555242

def state_2555252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
def hex_2555252 : String := "424309094344404105434205054205050540410A4306420607074440410543050505404105434209440707420944050705"
theorem cover_2555252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2555252)
  decide +kernel
#print axioms cover_2555252

def state_2555301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
def hex_2555301 : String := "420643400A0640410A44430642060706410706"
theorem cover_2555301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2555301)
  decide +kernel
#print axioms cover_2555301

def state_2555322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 24)))
def hex_2555322 : String := "06"
theorem cover_2555322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2555322)
  decide +kernel
#print axioms cover_2555322

def state_2555324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 24)))
def hex_2555324 : String := "4144404306420644410509410606060606"
theorem cover_2555324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555324 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2555324)
  decide +kernel
#print axioms cover_2555324
end Mub6.Numerical.CircleFullD0.Forest
