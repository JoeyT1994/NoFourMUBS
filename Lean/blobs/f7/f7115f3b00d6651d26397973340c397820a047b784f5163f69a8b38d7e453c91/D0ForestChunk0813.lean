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
def state_1495864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 102 else 59)))
def hex_1495864 : String := "410A444240064306410A06060A"
theorem cover_1495864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495864 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1495864)
  decide +kernel
#print axioms cover_1495864

def state_1495877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
def hex_1495877 : String := "410A4442400643410A064144424006430A410A06060A440642400643410A06410A440642400643060506060642400A430A0A0A"
theorem cover_1495877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 51) (hex := hex_1495877)
  decide +kernel
#print axioms cover_1495877

def state_1495929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 58)))
def hex_1495929 : String := "4240064341440642400643060506064144054205060506"
theorem cover_1495929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495929 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1495929)
  decide +kernel
#print axioms cover_1495929

def state_1495954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
def hex_1495954 : String := "43414244064006434107060706064142444006430607074406400643064108064244060706"
theorem cover_1495954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1495954)
  decide +kernel
#print axioms cover_1495954

def state_1495995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 118)))
def hex_1495995 : String := "4043414244060706064142070642070643414244050944064006094244054007430905064142440507440540434109064107050942054405400605"
theorem cover_1495995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1495995)
  decide +kernel
#print axioms cover_1495995

def state_1496055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 119)))
def hex_1496055 : String := "434142074440064306070A420744060741420744070707"
theorem cover_1496055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1496055)
  decide +kernel
#print axioms cover_1496055
end Mub6.Numerical.CircleFullD0.Forest
