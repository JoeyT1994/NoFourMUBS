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
def state_1548025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 204 else (if j.val < 4 then 81 else 87)))
def hex_1548025 : String := "44434140054205440543050505054341400642094409060505"
theorem cover_1548025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1548025)
  decide +kernel
#print axioms cover_1548025

def state_1548051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 205 else (if j.val < 4 then 81 else 174)))
def hex_1548051 : String := "4341404244050A0A4244430805430A410605440A0A400542050A41400542054405434106050505"
theorem cover_1548051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1548051)
  decide +kernel
#print axioms cover_1548051

def state_1548090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 205 else (if j.val < 4 then 81 else 175)))
def hex_1548090 : String := "43414042060A4244430A09430A06440A0A400A424405050A410605"
theorem cover_1548090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1548090)
  decide +kernel
#print axioms cover_1548090

def state_1548117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 121) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
def hex_1548117 : String := "40054205440505"
theorem cover_1548117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1548117)
  decide +kernel
#print axioms cover_1548117

def state_1548126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 86)))
def hex_1548126 : String := "4140094244080A0909"
theorem cover_1548126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1548126)
  decide +kernel
#print axioms cover_1548126

def state_1548136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
def hex_1548136 : String := "40424407430A0744090942444308074341400A420808400A08414042054407430A05424405430805440843410A084140050805054443094140074207080789"
theorem cover_1548136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1548136)
  decide +kernel
#print axioms cover_1548136

def state_1548199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
def hex_1548199 : String := "404205074205440609"
theorem cover_1548199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1548199)
  decide +kernel
#print axioms cover_1548199

def state_1548209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 87)))
def hex_1548209 : String := "41400A420A0A0A"
theorem cover_1548209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1548209)
  decide +kernel
#print axioms cover_1548209

def state_1548218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
def hex_1548218 : String := "4244430A410605430A06444309410A090A"
theorem cover_1548218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1548218)
  decide +kernel
#print axioms cover_1548218

def state_1548238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 162 else 174)))
def hex_1548238 : String := "41400A420A0A0A"
theorem cover_1548238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1548238)
  decide +kernel
#print axioms cover_1548238
end Mub6.Numerical.CircleFullD0.Forest
