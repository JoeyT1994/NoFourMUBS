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
def state_2304423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 93)))
def hex_2304423 : String := "4041434244400541090505444041070509094205080541434244060607420909430642064440050605"
theorem cover_2304423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2304423)
  decide +kernel
#print axioms cover_2304423

def state_2304464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
def hex_2304464 : String := "43064244400506054440414342054406050505410A06400506"
theorem cover_2304464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2304464)
  decide +kernel
#print axioms cover_2304464

def state_2304489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
def hex_2304489 : String := "414306420A4440410A06064041430607060606"
theorem cover_2304489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2304489)
  decide +kernel
#print axioms cover_2304489

def state_2304508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 47)))
def hex_2304508 : String := "404143420644404143064205060506064244400506054440054109050543060506"
theorem cover_2304508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_2304508)
  decide +kernel
#print axioms cover_2304508

def state_2304541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
def hex_2304541 : String := "06"
theorem cover_2304541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2304541)
  decide +kernel
#print axioms cover_2304541

def state_2304542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
def hex_2304542 : String := "444143050A0606"
theorem cover_2304542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2304542)
  decide +kernel
#print axioms cover_2304542

def state_2304553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
def hex_2304553 : String := "42404405414305424405404105060505430642064405060540440541054305424405070505"
theorem cover_2304553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_2304553)
  decide +kernel
#print axioms cover_2304553

def state_2304594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
def hex_2304594 : String := "42430540440541054305424405400705050505"
theorem cover_2304594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2304594)
  decide +kernel
#print axioms cover_2304594

def state_2304613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
def hex_2304613 : String := "4243404405410509054044074143420744050907074405410543090743054044410505414243054405404105070505420909440541054243050505"
theorem cover_2304613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2304613)
  decide +kernel
#print axioms cover_2304613
end Mub6.Numerical.CircleFullD0.Forest
