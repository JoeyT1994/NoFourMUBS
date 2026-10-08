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
def state_2568148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 117 else (if j.val < 4 then 115 else 191)))
def hex_2568148 : String := "414043420505054342444140434205050A0A0A414005430609054441094005090942440A4140050A054441090809400543420505420505"
theorem cover_2568148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2568148)
  decide +kernel
#print axioms cover_2568148

def state_2568203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
def hex_2568203 : String := "434206444140430A0A060606420A440A414043420A0A0A0A0A"
theorem cover_2568203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2568203)
  decide +kernel
#print axioms cover_2568203

def state_2568229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
def hex_2568229 : String := "4440434241440506444006054006430909060643420505420505404342410944400909090909430909"
theorem cover_2568229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2568229)
  decide +kernel
#print axioms cover_2568229

def state_2568274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 118 else (if j.val < 4 then 114 else 94)))
def hex_2568274 : String := "414440434207060643420A0A0A4043424144060944074007090906434241090A09420A094440070A4043420744074109070743420A0A0A"
theorem cover_2568274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2568274)
  decide +kernel
#print axioms cover_2568274

def state_2568329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 119 else (if j.val < 4 then 114 else 94)))
def hex_2568329 : String := "41440609444006430906400909"
theorem cover_2568329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2568329)
  decide +kernel
#print axioms cover_2568329

def state_2568342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 115 else 94)))
def hex_2568342 : String := "42414406400643420A0606440740070A06"
theorem cover_2568342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2568342)
  decide +kernel
#print axioms cover_2568342

def state_2568359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 94)))
def hex_2568359 : String := "434241440540430A0A050A4109440A0A420A41090A"
theorem cover_2568359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2568359)
  decide +kernel
#print axioms cover_2568359
end Mub6.Numerical.CircleFullD0.Forest
