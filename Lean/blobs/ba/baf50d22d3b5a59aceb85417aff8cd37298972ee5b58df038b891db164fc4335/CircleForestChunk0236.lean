import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_77949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_77949 : String := "4306440609"
theorem cover_77949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_77949)
  decide +kernel
#print axioms cover_77949

def state_77956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_77956 : String := "44424309444041090505090909"
theorem cover_77956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_77956)
  decide +kernel
#print axioms cover_77956

def state_77973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_77973 : String := "4143424440070607094244400841064342060608400741070744400606400941064309420706434207444007430541060507420744400741060807"
theorem cover_77973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_77973)
  decide +kernel
#print axioms cover_77973

def state_78032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_78032 : String := "41434244064106430540070506424406410640070A06430542444041430542050605054007054440060540414342070642070607410605"
theorem cover_78032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_78032 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_78032)
  decide +kernel
#print axioms cover_78032

def state_78087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_78087 : String := "40414307420709074143094244410A0707094307420744400741090707"
theorem cover_78087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_78087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_78087)
  decide +kernel
#print axioms cover_78087

def state_78116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
def hex_78116 : String := "4440414306440609430944424008060609410643064406424009060609"
theorem cover_78116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_78116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_78116)
  decide +kernel
#print axioms cover_78116

def state_78145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_78145 : String := "09"
theorem cover_78145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_78145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_78145)
  decide +kernel
#print axioms cover_78145

def state_78146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_78146 : String := "09"
theorem cover_78146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_78146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_78146)
  decide +kernel
#print axioms cover_78146

def state_132176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
def hex_132176 : String := "06"
theorem cover_132176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_132176)
  decide +kernel
#print axioms cover_132176

def state_132178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_132178 : String := "06"
theorem cover_132178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_132178)
  decide +kernel
#print axioms cover_132178

def state_132180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 5)))
def hex_132180 : String := "44064041424443064007060707424406430641070944060706"
theorem cover_132180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_132180)
  decide +kernel
#print axioms cover_132180

def state_132206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
def hex_132206 : String := "404142434406400806084306440642080A420843060806"
theorem cover_132206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_132206)
  decide +kernel
#print axioms cover_132206
end Mub6.Numerical.CircleFullPrototype.Forest
