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
def state_1580760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 51)))
def hex_1580760 : String := "444340410A420A440A0A410A420A440A0A0A4340410A420A440A0641420A440A0A420A440A43400A0A0A0A"
theorem cover_1580760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1580760)
  decide +kernel
#print axioms cover_1580760

def state_1580804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 102)))
def hex_1580804 : String := "434041094244094309050541094244094309090940064109420A09"
theorem cover_1580804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1580804)
  decide +kernel
#print axioms cover_1580804

def state_1580831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 103)))
def hex_1580831 : String := "434006414244434006410609060606424443404106424409060941420A0942440A0A440943090640060A434006410642444340060506060606444309060606"
theorem cover_1580831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_1580831)
  decide +kernel
#print axioms cover_1580831

def state_1580895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
def hex_1580895 : String := "424443070743400A070A44430808430808"
theorem cover_1580895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1580895)
  decide +kernel
#print axioms cover_1580895

def state_1580913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 51)))
def hex_1580913 : String := "44434041420744090A420A4443060943400A060A4107070A434041420A440A0A420A4443400A050A43050A41420507050A"
theorem cover_1580913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580913 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1580913)
  decide +kernel
#print axioms cover_1580913

def state_1580963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 102)))
def hex_1580963 : String := "434041094244094309090941084244060808404109420A0941084244070A08"
theorem cover_1580963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1580963)
  decide +kernel
#print axioms cover_1580963

def state_1580997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 66) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
def hex_1580997 : String := "424443080843080808"
theorem cover_1580997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1580997)
  decide +kernel
#print axioms cover_1580997
end Mub6.Numerical.CircleFullD0.Forest
