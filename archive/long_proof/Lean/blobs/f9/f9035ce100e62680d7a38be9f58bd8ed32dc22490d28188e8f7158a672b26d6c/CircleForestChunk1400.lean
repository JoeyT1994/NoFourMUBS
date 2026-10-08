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
def state_1636714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 38)))
def hex_1636714 : String := "414342440840074107074407074208084342444007430741070740074307410707074244400808400841084342080808440840084108430708"
theorem cover_1636714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1636714)
  decide +kernel
#print axioms cover_1636714

def state_1636772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 39)))
def hex_1636772 : String := "410943070A"
theorem cover_1636772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1636772)
  decide +kernel
#print axioms cover_1636772

def state_1636778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 100) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 39)))
def hex_1636778 : String := "434244400707070742444008084008410843420607084440070840074108430708"
theorem cover_1636778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1636778)
  decide +kernel
#print axioms cover_1636778

def state_1636812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 100 else 39)))
def hex_1636812 : String := "42444007070707"
theorem cover_1636812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1636812)
  decide +kernel
#print axioms cover_1636812

def state_1636819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 101 else 39)))
def hex_1636819 : String := "42444041080A4143424408080708430542440808440808404109094143054244080544080A054440074143070843074408074007414307424407070707"
theorem cover_1636819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_1636819)
  decide +kernel
#print axioms cover_1636819

def state_1636881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 51 else 19)))
def hex_1636881 : String := "444008410843440808084041080A414342080808434244400808400841060A44400808400841080A420808"
theorem cover_1636881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1636881)
  decide +kernel
#print axioms cover_1636881

def state_1636924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 19)))
def hex_1636924 : String := "444008410843420808084041080A4143420844080808434244400808400841080A44400808400841080A420808"
theorem cover_1636924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1636924)
  decide +kernel
#print axioms cover_1636924
end Mub6.Numerical.CircleFullD0.Forest
