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
def state_2567928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 194) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 190)))
def hex_2567928 : String := "434244414007430707074140054306420708054441404307074308094005430707414005080542440741400543420707070544414007430907074140050905"
theorem cover_2567928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2567928)
  decide +kernel
#print axioms cover_2567928

def state_2567991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 177 else 194) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 190)))
def hex_2567991 : String := "4342440A064441404308090A0A4109404306090642440A4140430A0A0A0A44410A0A41400909404309090A"
theorem cover_2567991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_2567991)
  decide +kernel
#print axioms cover_2567991

def state_2568034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 195) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 190)))
def hex_2568034 : String := "4043420707074342060A0A"
theorem cover_2568034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2568034)
  decide +kernel
#print axioms cover_2568034

def state_2568045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 191)))
def hex_2568045 : String := "41404342050542050543420644410806064244414043064206090606064441094005090940054306420505"
theorem cover_2568045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2568045)
  decide +kernel
#print axioms cover_2568045

def state_2568089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 116 else (if j.val < 4 then 115 else 95)))
def hex_2568089 : String := "444140070A07414043420505420505434206440A06420A0A400543060A"
theorem cover_2568089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2568089)
  decide +kernel
#print axioms cover_2568089

def state_2568119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 117 else (if j.val < 4 then 115 else 190)))
def hex_2568119 : String := "4140434207440741400509050743420A440A414009090A42080840070A"
theorem cover_2568119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2568119)
  decide +kernel
#print axioms cover_2568119
end Mub6.Numerical.CircleFullD0.Forest
