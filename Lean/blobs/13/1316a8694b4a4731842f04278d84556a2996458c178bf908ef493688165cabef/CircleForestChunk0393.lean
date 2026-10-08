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
def state_1031850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 202) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 124)))
def hex_1031850 : String := "4243444041090A4108420505400908440A0943444041420808420A430707410842080840410842430808070844400A0640410842090708"
theorem cover_1031850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1031850)
  decide +kernel
#print axioms cover_1031850

def state_1031906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 206 else (if j.val < 4 then 75 else 124)))
def hex_1031906 : String := "4344400A410505404142090A0A4142054305084205050A"
theorem cover_1031906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1031906)
  decide +kernel
#print axioms cover_1031906

def state_1031929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 207 else (if j.val < 4 then 75 else 124)))
def hex_1031929 : String := "434440410A0A41420543050642050540414243440A40074108050A07420A0741424305084308084243050A4305440A4007410505440A400A414206060A"
theorem cover_1031929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031929 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1031929)
  decide +kernel
#print axioms cover_1031929

def state_1031990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 124)))
def hex_1031990 : String := "41420808424344054041050505064344054041084205050506"
theorem cover_1031990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1031990)
  decide +kernel
#print axioms cover_1031990

def state_1032017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 202) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
def hex_1032017 : String := "4209430808"
theorem cover_1032017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1032017)
  decide +kernel
#print axioms cover_1032017

def state_1032023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 206 else (if j.val < 4 then 75 else 125)))
def hex_1032023 : String := "4344404109420943440A40094109050A41420808424305094305440A40090840094108420943080844400941090A09"
theorem cover_1032023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032023 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1032023)
  decide +kernel
#print axioms cover_1032023
end Mub6.Numerical.CircleFullD0.Forest
