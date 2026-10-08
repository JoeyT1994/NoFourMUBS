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
def state_1579592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 67) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
def hex_1579592 : String := "42444308084308084443400741424408070707400741420A44430707070843074006410607"
theorem cover_1579592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1579592)
  decide +kernel
#print axioms cover_1579592

def state_1579631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 105 else 103)))
def hex_1579631 : String := "444340410A420A440A0A414205440A05050A434041420A440A0A4205440A05050A"
theorem cover_1579631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1579631)
  decide +kernel
#print axioms cover_1579631

def state_1579668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 132) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 206)))
def hex_1579668 : String := "42444309094340410A420A44090A41420A0942054409050A440943400909400909"
theorem cover_1579668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1579668)
  decide +kernel
#print axioms cover_1579668

def state_1579701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 133) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 206)))
def hex_1579701 : String := "424443404109420A094109060A434041420A44094305074205440705050A44094340410907410942440505074041090741094244090A09"
theorem cover_1579701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1579701)
  decide +kernel
#print axioms cover_1579701

def state_1579756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 206)))
def hex_1579756 : String := "414244434009050943050A44080842444305400A05054443090943404108050540410942050905"
theorem cover_1579756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1579756)
  decide +kernel
#print axioms cover_1579756

def state_1579795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 211 else 206)))
def hex_1579795 : String := "40410A420A44090A41420A44090A420A440943400A080A"
theorem cover_1579795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1579795)
  decide +kernel
#print axioms cover_1579795
end Mub6.Numerical.CircleFullD0.Forest
