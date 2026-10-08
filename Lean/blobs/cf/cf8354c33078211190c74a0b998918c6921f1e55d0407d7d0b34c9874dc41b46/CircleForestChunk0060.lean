import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_14288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_14288 : String := "434440414209090941424305440505430544050542090540414209050505444009414207430907420909400907"
theorem cover_14288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_14288)
  decide +kernel
#print axioms cover_14288

def state_14334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_14334 : String := "42434405070743444205054205054442404107070740410843440605074106430507420744404107070507"
theorem cover_14334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_14334)
  decide +kernel
#print axioms cover_14334

def state_14377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_14377 : String := "42434441050541050544410740420743440605070707434441050505444142074043440505070542404344050507054043050905410705"
theorem cover_14377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_14377)
  decide +kernel
#print axioms cover_14377

def state_14434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_14434 : String := "424344400643080606064344404206070740064206430806440706"
theorem cover_14434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_14434)
  decide +kernel
#print axioms cover_14434

def state_14461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_14461 : String := "424344404106080808444006410644070606434440414206050505404106080844404106420607074006410606"
theorem cover_14461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_14461)
  decide +kernel
#print axioms cover_14461

def state_14506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_14506 : String := "4142434407084407064344070807424308440708434405084407410708"
theorem cover_14506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_14506)
  decide +kernel
#print axioms cover_14506
end Mub6.Numerical.CircleFullPrototype.Forest
