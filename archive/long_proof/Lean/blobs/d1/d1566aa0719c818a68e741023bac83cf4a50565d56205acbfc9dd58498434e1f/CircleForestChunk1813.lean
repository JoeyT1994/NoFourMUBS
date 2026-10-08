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
def state_2308275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 22)))
def hex_2308275 : String := "4240410644060641440506440A0A40064105440543424006090606"
theorem cover_2308275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2308275)
  decide +kernel
#print axioms cover_2308275

def state_2308307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 46)))
def hex_2308307 : String := "4342444109404342440909090643090941094009094409094244060906"
theorem cover_2308307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2308307)
  decide +kernel
#print axioms cover_2308307

def state_2308338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 56 else 46)))
def hex_2308338 : String := "44404143424407414007090744414006090741094005090807410A0A404143424441050505440905050541430A080A"
theorem cover_2308338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2308338)
  decide +kernel
#print axioms cover_2308338

def state_2308385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 56 else 46)))
def hex_2308385 : String := "444041434244410640060909090643424407084440070A080841430909430A0A4041430908054109430A08"
theorem cover_2308385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2308385)
  decide +kernel
#print axioms cover_2308385

def state_2308428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 57 else 46)))
def hex_2308428 : String := "08"
theorem cover_2308428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2308428)
  decide +kernel
#print axioms cover_2308428

def state_2308429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 46)))
def hex_2308429 : String := "414342440909090943420A440A4041090A09420A440A400809"
theorem cover_2308429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2308429)
  decide +kernel
#print axioms cover_2308429

def state_2308454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 47)))
def hex_2308454 : String := "4041430909434244400541090505444005410905050541094342440A40090609420809"
theorem cover_2308454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2308454)
  decide +kernel
#print axioms cover_2308454
end Mub6.Numerical.CircleFullD0.Forest
