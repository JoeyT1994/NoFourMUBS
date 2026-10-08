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
def state_976844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
def hex_976844 : String := "43440A070A"
theorem cover_976844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_976844)
  decide +kernel
#print axioms cover_976844

def state_976856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 88) else (if j.val < 3 then 60 else (if j.val < 4 then 84 else 56)))
def hex_976856 : String := "4442404108080909424041434442050905054307444205070541434409050543094406054041430744080707414309440942050909"
theorem cover_976856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976856 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_976856)
  decide +kernel
#print axioms cover_976856

def state_976909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 88) else (if j.val < 3 then 60 else (if j.val < 4 then 85 else 56)))
def hex_976909 : String := "4408420540414344080505434408070A41434408050543440642050906"
theorem cover_976909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976909 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_976909)
  decide +kernel
#print axioms cover_976909

def state_976938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 89) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
def hex_976938 : String := "4344094240070909440A4206400A06"
theorem cover_976938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_976938)
  decide +kernel
#print axioms cover_976938

def state_976953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
def hex_976953 : String := "41434409424041090906094406420540414309050606430906"
theorem cover_976953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_976953)
  decide +kernel
#print axioms cover_976953

def state_976980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 88) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
def hex_976980 : String := "43440942400709094408424041434408070843070A4143440842404108070909084309440842400806094041430708074143090809"
theorem cover_976980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_976980)
  decide +kernel
#print axioms cover_976980

def state_977033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 89) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
def hex_977033 : String := "4309440942400709400709"
theorem cover_977033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977033 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_977033)
  decide +kernel
#print axioms cover_977033

def state_977044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
def hex_977044 : String := "41430944084240410909090909"
theorem cover_977044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_977044)
  decide +kernel
#print axioms cover_977044
end Mub6.Numerical.CircleFullD0.Forest
