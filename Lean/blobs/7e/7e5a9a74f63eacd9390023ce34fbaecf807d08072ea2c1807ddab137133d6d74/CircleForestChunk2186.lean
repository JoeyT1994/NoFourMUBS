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
def state_2605196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_2605196 : String := "4344404241064308060642080540420809084440060A09"
theorem cover_2605196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2605196)
  decide +kernel
#print axioms cover_2605196

def state_2605220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
def hex_2605220 : String := "444042074143060607424143080807410543054405074042074144070707420841084443070707"
theorem cover_2605220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2605220)
  decide +kernel
#print axioms cover_2605220

def state_2605259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
def hex_2605259 : String := "44404207064241430707074106434406070640074207410907"
theorem cover_2605259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2605259)
  decide +kernel
#print axioms cover_2605259

def state_2605286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2605286 : String := "4243074409084308440908"
theorem cover_2605286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2605286)
  decide +kernel
#print axioms cover_2605286

def state_2605297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2605297 : String := "424344070844404142050905410842050740410842064306080843074440410943074405094143070907404143074207074307420707410707"
theorem cover_2605297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2605297)
  decide +kernel
#print axioms cover_2605297

def state_2605354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2605354 : String := "4108424307444108420807084308444109434440070807444007090808"
theorem cover_2605354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2605354)
  decide +kernel
#print axioms cover_2605354

def state_2605385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2605385 : String := "4142430A060642434407404142050605410A4205074406400641064244060606434406400641060706"
theorem cover_2605385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2605385)
  decide +kernel
#print axioms cover_2605385
end Mub6.Numerical.CircleFullD0.Forest
