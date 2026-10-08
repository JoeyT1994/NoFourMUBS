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
def state_2249862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
def hex_2249862 : String := "40430741420744070707434142074440074305080707414208444043414207060741420706074341084207440607410842084406084008084207440707"
theorem cover_2249862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2249862)
  decide +kernel
#print axioms cover_2249862

def state_2249924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
def hex_2249924 : String := "434208440505420844404106430642440608064105430542080508"
theorem cover_2249924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2249924)
  decide +kernel
#print axioms cover_2249924

def state_2249952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 27)))
def hex_2249952 : String := "424440410807080844404105430542440607054105430542440505054041084307420744050708"
theorem cover_2249952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2249952)
  decide +kernel
#print axioms cover_2249952

def state_2249992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 27)))
def hex_2249992 : String := "44404341080741420844404308080808420744400743410807410807074308410842084440430809080808"
theorem cover_2249992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2249992)
  decide +kernel
#print axioms cover_2249992

def state_2250038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2250038 : String := "4142440608054244400643064106420706400743074108074406404306410607430541054244060705"
theorem cover_2250038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2250038)
  decide +kernel
#print axioms cover_2250038

def state_2250080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 102) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
def hex_2250080 : String := "424406404308080806"
theorem cover_2250080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2250080)
  decide +kernel
#print axioms cover_2250080
end Mub6.Numerical.CircleFullD0.Forest
