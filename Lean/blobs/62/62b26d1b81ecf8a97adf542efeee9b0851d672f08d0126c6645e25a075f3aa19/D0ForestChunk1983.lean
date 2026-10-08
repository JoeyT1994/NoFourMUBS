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
def state_2556540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
def hex_2556540 : String := "444007420943414408400708070840420505420943414440054208080505410805"
theorem cover_2556540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556540 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2556540)
  decide +kernel
#print axioms cover_2556540

def state_2556575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
def hex_2556575 : String := "4440064243444106400642430A44060A060A44064106400642430A0606430A06400A42430A0A0A"
theorem cover_2556575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_2556575)
  decide +kernel
#print axioms cover_2556575

def state_2556615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
def hex_2556615 : String := "404243410A0506064243E24144400642430906064042430505064243E241060843E20644400742070840054243050543050543E2410644064005420505"
theorem cover_2556615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2556615)
  decide +kernel
#print axioms cover_2556615

def state_2556676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
def hex_2556676 : String := "40054243410A0541444005424305050A0505430A410A05"
theorem cover_2556676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556676 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2556676)
  decide +kernel
#print axioms cover_2556676

def state_2556699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
def hex_2556699 : String := "41440640064243410644060A06064440064243410608060640054243414440054208060505084341060506"
theorem cover_2556699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_2556699)
  decide +kernel
#print axioms cover_2556699
end Mub6.Numerical.CircleFullD0.Forest
