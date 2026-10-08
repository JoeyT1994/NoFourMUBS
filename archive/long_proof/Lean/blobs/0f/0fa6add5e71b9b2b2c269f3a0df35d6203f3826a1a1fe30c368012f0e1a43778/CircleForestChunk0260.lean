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
def state_999864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 54 else 43)))
def hex_999864 : String := "404442414305094305050542414306094305404442090542090944420805420806410605444241064305404405420805060606"
theorem cover_999864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_999864)
  decide +kernel
#print axioms cover_999864

def state_999916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 43)))
def hex_999916 : String := "4442434108404442090542080944420705080843410905410840094409084243410840440808080843410940094409064108400908"
theorem cover_999916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_999916)
  decide +kernel
#print axioms cover_999916

def state_999969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 43)))
def hex_999969 : String := "4442084341064005060808"
theorem cover_999969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_999969)
  decide +kernel
#print axioms cover_999969

def state_999981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 54 else 43)))
def hex_999981 : String := "404405424143050505054405424143054044054241060505060505"
theorem cover_999981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_999981)
  decide +kernel
#print axioms cover_999981

def state_1000009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 43)))
def hex_1000009 : String := "444241430540060707054241434044420A05420A410505444208054208410805400A0843050A4143054044420A050A44420805420843050805"
theorem cover_1000009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1000009)
  decide +kernel
#print axioms cover_1000009

def state_1000066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 43)))
def hex_1000066 : String := "44420741430507054241434008070807414340050608430507"
theorem cover_1000066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_1000066)
  decide +kernel
#print axioms cover_1000066
end Mub6.Numerical.CircleFullD0.Forest
