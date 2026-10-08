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
def state_146651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 6)))
def hex_146651 : String := "44404306440641064206070640430741424440070605074209074341064206074142440605074244060944400706400743064107420907"
theorem cover_146651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_146651)
  decide +kernel
#print axioms cover_146651

def state_146707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 12)))
def hex_146707 : String := "404408414243400806050A0844410608414243060543060A420843400806400844064142050A08"
theorem cover_146707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_146707)
  decide +kernel
#print axioms cover_146707

def state_146747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
def hex_146747 : String := "41420543440A05054243090543444043070A4344410708074408410A0809440A05"
theorem cover_146747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_146747)
  decide +kernel
#print axioms cover_146747

def state_146781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
def hex_146781 : String := "4205434440410543070541054306050505"
theorem cover_146781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_146781)
  decide +kernel
#print axioms cover_146781

def state_146799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 13 else 13)))
def hex_146799 : String := "4344404205434406050542054306050505"
theorem cover_146799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_146799)
  decide +kernel
#print axioms cover_146799

def state_146818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 26 else 26)))
def hex_146818 : String := "4043444106064107420907444142050A08410542054043070A43074408054306440641054205404344060644060506"
theorem cover_146818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_146818)
  decide +kernel
#print axioms cover_146818

def state_146865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 26 else 27)))
def hex_146865 : String := "4043410509054341054205444007060505"
theorem cover_146865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_146865)
  decide +kernel
#print axioms cover_146865

def state_146882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 27 else 13)))
def hex_146882 : String := "44404441050805444105420543400806050505"
theorem cover_146882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146882 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_146882)
  decide +kernel
#print axioms cover_146882
end Mub6.Numerical.CircleFullPrototype.Forest
