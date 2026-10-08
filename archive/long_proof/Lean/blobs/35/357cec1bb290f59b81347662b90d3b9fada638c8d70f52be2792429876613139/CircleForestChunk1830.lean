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
def state_2312360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 46)))
def hex_2312360 : String := "4342444041080841434209070843424440080A080808400841090844404106084107430708400807420808"
theorem cover_2312360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2312360)
  decide +kernel
#print axioms cover_2312360

def state_2312403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 46)))
def hex_2312403 : String := "434244400541430808050544400841430808080808"
theorem cover_2312403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2312403)
  decide +kernel
#print axioms cover_2312403

def state_2312425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 46)))
def hex_2312425 : String := "43424440410943420A07420A0941070A404107430708070742444041090809094440090707"
theorem cover_2312425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2312425)
  decide +kernel
#print axioms cover_2312425

def state_2312462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 46)))
def hex_2312462 : String := "4342444041430A080A0A4041430805050A4440414342440A07074208074342080808414307070A404143070708410706424440080A0844400841430A080A08"
theorem cover_2312462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2312462)
  decide +kernel
#print axioms cover_2312462

def state_2312525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 47)))
def hex_2312525 : String := "40414342080805054143070943424440050605444008070508"
theorem cover_2312525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312525 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2312525)
  decide +kernel
#print axioms cover_2312525

def state_2312550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
def hex_2312550 : String := "4440084142080942080808"
theorem cover_2312550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2312550)
  decide +kernel
#print axioms cover_2312550
end Mub6.Numerical.CircleFullD0.Forest
