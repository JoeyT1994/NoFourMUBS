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
def state_1021139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 101)))
def hex_1021139 : String := "4241404405050540444305420541054044050505430505054140070640444342410640070606424106404407070606430707440606"
theorem cover_1021139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1021139)
  decide +kernel
#print axioms cover_1021139

def state_1021193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 51)))
def hex_1021193 : String := "4108404344050544420541054009050505"
theorem cover_1021193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1021193)
  decide +kernel
#print axioms cover_1021193

def state_1021210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
def hex_1021210 : String := "4140074307084043440707444241074007444305070707074344420507420507444241050541074044070744060508"
theorem cover_1021210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1021210)
  decide +kernel
#print axioms cover_1021210

def state_1021259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1021259 : String := "44420608424140060606410740064306440606"
theorem cover_1021259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1021259)
  decide +kernel
#print axioms cover_1021259

def state_1021279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
def hex_1021279 : String := "42414006060641404408430606444308420608434241070607420A0A40064406430606"
theorem cover_1021279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1021279)
  decide +kernel
#print axioms cover_1021279

def state_1021314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
def hex_1021314 : String := "4241400643060606414009434407074442090707400643440606440606"
theorem cover_1021314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021314 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1021314)
  decide +kernel
#print axioms cover_1021314

def state_1021345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 50)))
def hex_1021345 : String := "4241404344080544420608420541400605064305440A054006430844084205410506414008430844080A08"
theorem cover_1021345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1021345)
  decide +kernel
#print axioms cover_1021345
end Mub6.Numerical.CircleFullD0.Forest
