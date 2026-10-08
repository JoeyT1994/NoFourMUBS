import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2579193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 36)))
def hex_2579193 : String := "4340410707410744074243074007070740414405054405054106440642434041070706400506430605"
theorem cover_2579193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2579193)
  decide +kernel
#print axioms cover_2579193

def state_2579237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 37)))
def hex_2579237 : String := "41444342094009410944090909094443064206400641090906"
theorem cover_2579237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2579237)
  decide +kernel
#print axioms cover_2579237

def state_2579265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 94 else (if j.val < 4 then 192 else 74)))
def hex_2579265 : String := "42404144050544050505404144430742090743420540090509444307424007050743420540410706054209400941094405054105440505"
theorem cover_2579265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2579265)
  decide +kernel
#print axioms cover_2579265

def state_2579320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 94 else (if j.val < 4 then 193 else 74)))
def hex_2579320 : String := "4240090840414409094443420940070709094108444342054007050808"
theorem cover_2579320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2579320)
  decide +kernel
#print axioms cover_2579320

def state_2579349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 75)))
def hex_2579349 : String := "4342404109060540414409094443060906414405054405054208400908"
theorem cover_2579349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2579349)
  decide +kernel
#print axioms cover_2579349

def state_2579380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 192 else 74)))
def hex_2579380 : String := "42404144050506054041444307424007050743064206400641440706064443064206070641440505440505"
theorem cover_2579380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2579380)
  decide +kernel
#print axioms cover_2579380

def state_2579424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 188 else (if j.val < 4 then 193 else 74)))
def hex_2579424 : String := "4041094409064108440808"
theorem cover_2579424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2579424)
  decide +kernel
#print axioms cover_2579424
end Mub6.Numerical.CircleFullD0.Forest
