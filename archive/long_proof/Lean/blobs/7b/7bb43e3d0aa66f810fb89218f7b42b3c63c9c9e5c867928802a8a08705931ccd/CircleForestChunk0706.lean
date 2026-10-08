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
def state_1470351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 11)))
def hex_1470351 : String := "41434008420A0A4006424441064308060644410643080608430A400A4244430A414006420544080605080A"
theorem cover_1470351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1470351)
  decide +kernel
#print axioms cover_1470351

def state_1470394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 5)))
def hex_1470394 : String := "44414309400942440941430540060809090941430A4008444241080A08084309400944090A"
theorem cover_1470394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1470394)
  decide +kernel
#print axioms cover_1470394

def state_1470432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_1470432 : String := "400742074341440740074243414407400742070907074309070707"
theorem cover_1470432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 27) (hex := hex_1470432)
  decide +kernel
#print axioms cover_1470432

def state_1470460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_1470460 : String := "420643444106070606"
theorem cover_1470460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1470460)
  decide +kernel
#print axioms cover_1470460

def state_1470470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
def hex_1470470 : String := "434441400642434406060643444106070606400742070741064006420644434106050606440706"
theorem cover_1470470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1470470)
  decide +kernel
#print axioms cover_1470470

def state_1470511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
def hex_1470511 : String := "41404206430806424344414006420608400709410640064206094441060706434409410809444108070840420707424344070907430907"
theorem cover_1470511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1470511)
  decide +kernel
#print axioms cover_1470511
end Mub6.Numerical.CircleFullD0.Forest
