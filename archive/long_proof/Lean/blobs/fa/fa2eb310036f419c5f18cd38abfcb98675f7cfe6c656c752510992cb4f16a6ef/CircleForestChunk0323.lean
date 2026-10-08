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
def state_1014949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
def hex_1014949 : String := "434042440541430506050542070540064207440741434042050505400642064406414305060505"
theorem cover_1014949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_1014949)
  decide +kernel
#print axioms cover_1014949

def state_1014988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
def hex_1014988 : String := "43054006420644054143050605"
theorem cover_1014988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1014988)
  decide +kernel
#print axioms cover_1014988

def state_1015004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
def hex_1015004 : String := "44424143400A44414305420A0505414305070A0A0A41430540074442410705070705420A410705"
theorem cover_1015004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1015004)
  decide +kernel
#print axioms cover_1015004

def state_1015049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 44)))
def hex_1015049 : String := "41430542400A44430541420A05054341420A0505414208400A4405060A0505"
theorem cover_1015049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1015049)
  decide +kernel
#print axioms cover_1015049

def state_1015080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 45)))
def hex_1015080 : String := "414342400A44410605060542400A4443414208050A0A0A40074405064305420A05"
theorem cover_1015080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1015080)
  decide +kernel
#print axioms cover_1015080

def state_1015114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 44)))
def hex_1015114 : String := "41434240050605424044430541420805054341060541084208054443410605074306080543054240050705"
theorem cover_1015114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1015114)
  decide +kernel
#print axioms cover_1015114

def state_1015157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 45)))
def hex_1015157 : String := "4143064240444306080806064342400506054240444143050A050A444143050607410643050605"
theorem cover_1015157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1015157)
  decide +kernel
#print axioms cover_1015157
end Mub6.Numerical.CircleFullD0.Forest
