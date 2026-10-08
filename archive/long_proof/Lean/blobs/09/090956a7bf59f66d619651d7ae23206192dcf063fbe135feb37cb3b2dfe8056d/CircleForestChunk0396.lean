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
def state_1032576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 62)))
def hex_1032576 : String := "4344054041420543054405404105050505054440410A0A07404142094344400A0540094109050A4207434405400A050A41420743050707"
theorem cover_1032576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032576 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1032576)
  decide +kernel
#print axioms cover_1032576

def state_1032633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
def hex_1032633 : String := "40414205430544054009050505"
theorem cover_1032633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1032633)
  decide +kernel
#print axioms cover_1032633

def state_1032646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 125)))
def hex_1032646 : String := "40414243054440410505054041060605434405064440414205074205050540064142050705424305440505430544054006054142050505"
theorem cover_1032646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032646 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1032646)
  decide +kernel
#print axioms cover_1032646

def state_1032702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 124)))
def hex_1032702 : String := "40414243440A400A050A43440A40410A0A41420509050A420A43090A4142430506430506420509"
theorem cover_1032702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1032702)
  decide +kernel
#print axioms cover_1032702

def state_1032746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 150 else 250)))
def hex_1032746 : String := "40410A0A41420543050A05"
theorem cover_1032746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1032746)
  decide +kernel
#print axioms cover_1032746

def state_1032757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 150 else 251)))
def hex_1032757 : String := "4041420943444006410505060A420A43440A060A4142430509434405404105050544400A410505400941084205054243050A43054405400A05"
theorem cover_1032757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1032757)
  decide +kernel
#print axioms cover_1032757

def state_1032814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 151 else 125)))
def hex_1032814 : String := "440A400A41420943440A09090A"
theorem cover_1032814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1032814)
  decide +kernel
#print axioms cover_1032814
end Mub6.Numerical.CircleFullD0.Forest
