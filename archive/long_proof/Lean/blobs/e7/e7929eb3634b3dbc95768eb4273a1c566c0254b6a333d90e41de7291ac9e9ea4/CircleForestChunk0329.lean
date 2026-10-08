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
def state_1016360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 88)))
def hex_1016360 : String := "424143054044420A05420A0744424143054044090A4409420A090505424143400744420505070A0A41070505414305400744050505"
theorem cover_1016360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_1016360)
  decide +kernel
#print axioms cover_1016360

def state_1016413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 89)))
def hex_1016413 : String := "424143400744424106050506400744420A07070A410705"
theorem cover_1016413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1016413)
  decide +kernel
#print axioms cover_1016413

def state_1016437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 88)))
def hex_1016437 : String := "42414305404442414305404442080542080908050542414340444208050606084305400A084106054442410805054208060541430540050505"
theorem cover_1016437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1016437)
  decide +kernel
#print axioms cover_1016437

def state_1016494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 89)))
def hex_1016494 : String := "4241430640444241060A06060643054044050A440506410605"
theorem cover_1016494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1016494)
  decide +kernel
#print axioms cover_1016494

def state_1016519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 45)))
def hex_1016519 : String := "4241434044420807070608434044420A0A0A444241080A410606420806400A44420841080A0841074340070640074442410643050A0606"
theorem cover_1016519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1016519)
  decide +kernel
#print axioms cover_1016519

def state_1016575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
def hex_1016575 : String := "44424143400744420541050A05050A410743400744420A070740074442060707420A07"
theorem cover_1016575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1016575)
  decide +kernel
#print axioms cover_1016575
end Mub6.Numerical.CircleFullD0.Forest
