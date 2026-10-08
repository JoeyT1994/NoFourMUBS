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
def state_2549441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_2549441 : String := "43444007414307070740074143084442070A0843074407420707444007414207070740410707414442430707430A07420A0A4442070742430707430707"
theorem cover_2549441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549441 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_2549441)
  decide +kernel
#print axioms cover_2549441

def state_2549503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_2549503 : String := "07"
theorem cover_2549503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2549503)
  decide +kernel
#print axioms cover_2549503

def state_2549506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
def hex_2549506 : String := "444006434205070540434244070A070743424441050941094009094441064006430705410A400A43090942440541050944064106400609"
theorem cover_2549506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2549506)
  decide +kernel
#print axioms cover_2549506

def state_2549561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
def hex_2549561 : String := "440640064344060A06"
theorem cover_2549561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2549561)
  decide +kernel
#print axioms cover_2549561

def state_2549571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
def hex_2549571 : String := "440740434142070707074341424409094407400743090942094407400709414244070907420907"
theorem cover_2549571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2549571)
  decide +kernel
#print axioms cover_2549571

def state_2549610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
def hex_2549610 : String := "44074007434144420706424007430A07064407420707410607"
theorem cover_2549610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2549610)
  decide +kernel
#print axioms cover_2549610

def state_2549637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_2549637 : String := "410643404207064244054105070506"
theorem cover_2549637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2549637)
  decide +kernel
#print axioms cover_2549637

def state_2549653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_2549653 : String := "434440064243050A050A44060A"
theorem cover_2549653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2549653)
  decide +kernel
#print axioms cover_2549653
end Mub6.Numerical.CircleFullD0.Forest
