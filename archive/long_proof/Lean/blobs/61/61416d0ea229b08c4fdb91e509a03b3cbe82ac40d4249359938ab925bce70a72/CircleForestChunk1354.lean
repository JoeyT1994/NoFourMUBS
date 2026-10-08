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
def state_1625718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 207) else (if j.val < 3 then 106 else (if j.val < 4 then 194 else 68)))
def hex_1625718 : String := "4240444305410505050540444305410706430541050505"
theorem cover_1625718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1625718)
  decide +kernel
#print axioms cover_1625718

def state_1625742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 206) else (if j.val < 3 then 106 else (if j.val < 4 then 195 else 68)))
def hex_1625742 : String := "424044084341084205080844084305084044084341084208080844084341080508"
theorem cover_1625742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1625742)
  decide +kernel
#print axioms cover_1625742

def state_1625775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 207) else (if j.val < 3 then 106 else (if j.val < 4 then 195 else 68)))
def hex_1625775 : String := "4240444341420909420505090A4409054044064341420A0606064409430509"
theorem cover_1625775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1625775)
  decide +kernel
#print axioms cover_1625775

def state_1625806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 69)))
def hex_1625806 : String := "4341420540444305414205050505050541424044430A080A0540444341080A080A4443054108050542400A05400A05"
theorem cover_1625806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1625806)
  decide +kernel
#print axioms cover_1625806

def state_1625853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
def hex_1625853 : String := "44434105054109094305410505"
theorem cover_1625853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_1625853)
  decide +kernel
#print axioms cover_1625853

def state_1625868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 68)))
def hex_1625868 : String := "434107074142404406430706440843070807424006440643070606"
theorem cover_1625868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625868 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1625868)
  decide +kernel
#print axioms cover_1625868

def state_1625895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 69)))
def hex_1625895 : String := "43414240070507424007050741424044430708434107070A444341070541084205074305410805400707424044060A444305414205050505400607"
theorem cover_1625895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1625895)
  decide +kernel
#print axioms cover_1625895
end Mub6.Numerical.CircleFullD0.Forest
