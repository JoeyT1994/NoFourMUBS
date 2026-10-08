import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1033077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 150 else 125)))
def hex_1033077 : String := "4440414205050505404142430508430508420509410805"
theorem cover_1033077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033077 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1033077)
  decide +kernel
#print axioms cover_1033077

def state_1033101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 250)))
def hex_1033101 : String := "404142060642060606"
theorem cover_1033101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1033101)
  decide +kernel
#print axioms cover_1033101

def state_1033110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 251)))
def hex_1033110 : String := "40414243080843080842434440410A0505404142080842050A4108054406400A0643444041420A07090640410707410809440640410606064108420606"
theorem cover_1033110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033110 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1033110)
  decide +kernel
#print axioms cover_1033110

def state_1033171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
def hex_1033171 : String := "42430544400A054041420A43050A0A41420505054344054009054440414206060906404142434405400A050A43094406400A06420A094142060609"
theorem cover_1033171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1033171)
  decide +kernel
#print axioms cover_1033171

def state_1033230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
def hex_1033230 : String := "4243054440080540420A410A084205410505434405404142050505054440080940414243080843080808414243054405400A050909"
theorem cover_1033230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1033230)
  decide +kernel
#print axioms cover_1033230
end Mub6.Numerical.CircleFullD0.Forest
