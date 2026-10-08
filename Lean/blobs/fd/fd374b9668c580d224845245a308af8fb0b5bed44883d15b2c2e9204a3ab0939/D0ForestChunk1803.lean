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
def state_2305865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
def hex_2305865 : String := "4243064440414243440506440940084105064305440507420609410506404142430608074206064107064307444041054209070540410742080707"
theorem cover_2305865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_2305865)
  decide +kernel
#print axioms cover_2305865

def state_2305924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 107) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
def hex_2305924 : String := "420643064440090606"
theorem cover_2305924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2305924)
  decide +kernel
#print axioms cover_2305924

def state_2305933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
def hex_2305933 : String := "4142060706"
theorem cover_2305933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305933 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2305933)
  decide +kernel
#print axioms cover_2305933

def state_2305942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 74 else (if j.val < 4 then 55 else 90)))
def hex_2305942 : String := "4344404105090540414243094409084305080941054209430509444041424309060609410542090940410808414243440508084305084243080808"
theorem cover_2305942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305942 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2305942)
  decide +kernel
#print axioms cover_2305942

def state_2306001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 75 else (if j.val < 4 then 55 else 90)))
def hex_2306001 : String := "43440540414243050505420909054440410609054008414243050605420808"
theorem cover_2306001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2306001)
  decide +kernel
#print axioms cover_2306001

def state_2306032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 107) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 90)))
def hex_2306032 : String := "42430944094008094344090944094008410808"
theorem cover_2306032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2306032)
  decide +kernel
#print axioms cover_2306032

def state_2306051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 90)))
def hex_2306051 : String := "414243054405404105420A430508050542434405064440090540414209430908090A43440540410506054440410509054041424309084305080941050A"
theorem cover_2306051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306051 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2306051)
  decide +kernel
#print axioms cover_2306051
end Mub6.Numerical.CircleFullD0.Forest
