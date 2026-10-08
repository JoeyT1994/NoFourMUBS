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
def state_1568994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 11)))
def hex_1568994 : String := "44420A0A42410843440A4008090A410543440A0508"
theorem cover_1568994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1568994)
  decide +kernel
#print axioms cover_1568994

def state_1569015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
def hex_1569015 : String := "404305084305440A05"
theorem cover_1569015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1569015)
  decide +kernel
#print axioms cover_1569015

def state_1569025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
def hex_1569025 : String := "4441424043440605444106064105424043054406050505060606410542444043054241050605060705"
theorem cover_1569025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1569025)
  decide +kernel
#print axioms cover_1569025

def state_1569067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_1569067 : String := "4142434044410A0A410A0A4406410706400A0A43400A060A4243404406424143060A06060640440A0A0606"
theorem cover_1569067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1569067)
  decide +kernel
#print axioms cover_1569067

def state_1569111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_1569111 : String := "42434440410542430509050705440A0943050A"
theorem cover_1569111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569111 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1569111)
  decide +kernel
#print axioms cover_1569111

def state_1569131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
def hex_1569131 : String := "434440424143440A050A43440640420605060A41050642410606064042410544434042410544060505050A430509050744400A0A400A09"
theorem cover_1569131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1569131)
  decide +kernel
#print axioms cover_1569131

def state_1569186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
def hex_1569186 : String := "434440050505440A05"
theorem cover_1569186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1569186)
  decide +kernel
#print axioms cover_1569186

def state_1569196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1569196 : String := "4243444107084107054441424309094307400909424309400909434009074009444309090909430744410743074009064107430709"
theorem cover_1569196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1569196)
  decide +kernel
#print axioms cover_1569196
end Mub6.Numerical.CircleFullD0.Forest
