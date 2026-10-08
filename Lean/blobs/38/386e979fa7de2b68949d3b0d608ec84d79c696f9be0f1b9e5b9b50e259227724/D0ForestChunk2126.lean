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
def state_2590845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
def hex_2590845 : String := "42434006414442064306070606400741070743400641444243060743400609070644420643064006410706064007410744434207070707"
theorem cover_2590845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590845 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2590845)
  decide +kernel
#print axioms cover_2590845

def state_2590900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
def hex_2590900 : String := "4206430640064144434206064207050606"
theorem cover_2590900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2590900)
  decide +kernel
#print axioms cover_2590900

def state_2590917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 21)))
def hex_2590917 : String := "06"
theorem cover_2590917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2590917)
  decide +kernel
#print axioms cover_2590917

def state_2590919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 10)))
def hex_2590919 : String := "44414042060842430641440806060940060906"
theorem cover_2590919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2590919)
  decide +kernel
#print axioms cover_2590919

def state_2590938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 10)))
def hex_2590938 : String := "44414340054241444308050744430808070540054241050505434008424144080606094005424144050544050505410707"
theorem cover_2590938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2590938)
  decide +kernel
#print axioms cover_2590938

def state_2590987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 11)))
def hex_2590987 : String := "410706"
theorem cover_2590987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590987 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2590987)
  decide +kernel
#print axioms cover_2590987

def state_2590990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
def hex_2590990 : String := "434441404243060505424306440907094006090644414005434244410540050905050540054342440941070605424405050507"
theorem cover_2590990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2590990)
  decide +kernel
#print axioms cover_2590990

def state_2591043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 5)))
def hex_2591043 : String := "44414240430644414205090941420606060940430944090909424006090941420644090606"
theorem cover_2591043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591043 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2591043)
  decide +kernel
#print axioms cover_2591043
end Mub6.Numerical.CircleFullD0.Forest
