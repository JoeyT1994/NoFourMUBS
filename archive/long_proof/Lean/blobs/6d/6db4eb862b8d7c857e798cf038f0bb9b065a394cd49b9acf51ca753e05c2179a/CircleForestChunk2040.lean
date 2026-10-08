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
def state_2570086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 22)))
def hex_2570086 : String := "404144074342074144070A070707410A0A"
theorem cover_2570086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2570086)
  decide +kernel
#print axioms cover_2570086

def state_2570103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 22)))
def hex_2570103 : String := "40414443050743424144054043420707060A44070A41440540060544400705404307060A4241440606074106440606440743070741440543050A0A"
theorem cover_2570103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2570103)
  decide +kernel
#print axioms cover_2570103

def state_2570162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 29 else 22)))
def hex_2570162 : String := "4240070A404144060607410A0A"
theorem cover_2570162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2570162)
  decide +kernel
#print axioms cover_2570162

def state_2570179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
def hex_2570179 : String := "41434244074140070A074441404307070A07414043420744410A0741400709074207440741400509050A40070A4207444140070A074140070A07430707"
theorem cover_2570179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2570179)
  decide +kernel
#print axioms cover_2570179

def state_2570240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
def hex_2570240 : String := "41430A0A0A"
theorem cover_2570240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2570240)
  decide +kernel
#print axioms cover_2570240

def state_2570248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 56 else 47)))
def hex_2570248 : String := "42444140434206440705070A40050641400506054441404342444140050A05054441090505420505430A0A40050A414005430642050505"
theorem cover_2570248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2570248)
  decide +kernel
#print axioms cover_2570248

def state_2570303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 57 else 47)))
def hex_2570303 : String := "42444140050A07410505444140430505430A0808410505"
theorem cover_2570303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_2570303)
  decide +kernel
#print axioms cover_2570303

def state_2570326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
def hex_2570326 : String := "4342050505"
theorem cover_2570326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570326 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2570326)
  decide +kernel
#print axioms cover_2570326

def state_2570331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
def hex_2570331 : String := "41434206440A06420A0A06"
theorem cover_2570331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2570331)
  decide +kernel
#print axioms cover_2570331
end Mub6.Numerical.CircleFullD0.Forest
