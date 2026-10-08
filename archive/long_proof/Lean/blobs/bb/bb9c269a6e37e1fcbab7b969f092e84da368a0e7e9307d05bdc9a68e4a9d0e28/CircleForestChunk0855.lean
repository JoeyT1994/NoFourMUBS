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
def state_1505881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
def hex_1505881 : String := "43884244400806064440410A430A0841430A0A438842064407060A"
theorem cover_1505881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1505881)
  decide +kernel
#print axioms cover_1505881

def state_1505909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 121)))
def hex_1505909 : String := "88"
theorem cover_1505909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1505909)
  decide +kernel
#print axioms cover_1505909

def state_1505911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 166 else (if j.val < 4 then 211 else 121)))
def hex_1505911 : String := "4440084143880643880808"
theorem cover_1505911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1505911)
  decide +kernel
#print axioms cover_1505911

def state_1505923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 167 else (if j.val < 4 then 211 else 242)))
def hex_1505923 : String := "40414388084388094143884244400806064407400807438842444008414342060708090844094009410707"
theorem cover_1505923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1505923)
  decide +kernel
#print axioms cover_1505923

def state_1505966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 167 else (if j.val < 4 then 211 else 243)))
def hex_1505966 : String := "4041084388084143880843884206444008410643070605"
theorem cover_1505966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1505966)
  decide +kernel
#print axioms cover_1505966

def state_1505989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
def hex_1505989 : String := "414388420644404106430606060643884206444041438842060743884244404106050506440707410643880640410643060606"
theorem cover_1505989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1505989)
  decide +kernel
#print axioms cover_1505989

def state_1506040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
def hex_1506040 : String := "41434206444043084106880606420644404106438806060643884244060644404143884206440506438842054405400705410643080540410643880606"
theorem cover_1506040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1506040)
  decide +kernel
#print axioms cover_1506040
end Mub6.Numerical.CircleFullD0.Forest
