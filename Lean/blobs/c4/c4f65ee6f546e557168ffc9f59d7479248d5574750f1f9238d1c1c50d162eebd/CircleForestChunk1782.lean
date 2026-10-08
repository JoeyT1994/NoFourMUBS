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
def state_2300823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 46)))
def hex_2300823 : String := "44414307400A07434042440943064107060707404244090A0A4244410709410706074107434042444306410706060706400A07"
theorem cover_2300823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2300823)
  decide +kernel
#print axioms cover_2300823

def state_2300877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 92)))
def hex_2300877 : String := "400A43424441400A43080A400A43420644410706064244410A090A0A41400A430707400A430642440A050A444107400A43070741070A4244410A0A0A0A"
theorem cover_2300877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2300877)
  decide +kernel
#print axioms cover_2300877

def state_2300938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 92)))
def hex_2300938 : String := "404342050805434244414043090543064206090941400506054441400A434206070A40090941400A43060A40050642444140054342050A05050544410A0805"
theorem cover_2300938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2300938)
  decide +kernel
#print axioms cover_2300938

def state_2301001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 93)))
def hex_2301001 : String := "41400A434244410A400543060505070A400543420544414005430605050505"
theorem cover_2301001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2301001)
  decide +kernel
#print axioms cover_2301001

def state_2301032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 46)))
def hex_2301032 : String := "44410A4008434244410A40080941074008430607070A410A4008434244410708050708"
theorem cover_2301032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301032 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_2301032)
  decide +kernel
#print axioms cover_2301032
end Mub6.Numerical.CircleFullD0.Forest
