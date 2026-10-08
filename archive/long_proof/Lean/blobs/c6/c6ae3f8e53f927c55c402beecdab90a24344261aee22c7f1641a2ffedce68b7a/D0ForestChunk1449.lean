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
def state_1648483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 42)))
def hex_1648483 : String := "40430544420541400A05050505"
theorem cover_1648483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648483 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1648483)
  decide +kernel
#print axioms cover_1648483

def state_1648499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 42)))
def hex_1648499 : String := "44424143094009440605430540090541094309400944A00509"
theorem cover_1648499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648499 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1648499)
  decide +kernel
#print axioms cover_1648499

def state_1648525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 84)))
def hex_1648525 : String := "42414043440A090A4344A0420609444207410707420A0A400A4344A0050A414043090A4344A00944420A0A0A400A43440A0A0A"
theorem cover_1648525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1648525)
  decide +kernel
#print axioms cover_1648525

def state_1648576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 85)))
def hex_1648576 : String := "4241400943094442060A09400A43050A4109400943050A"
theorem cover_1648576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648576 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1648576)
  decide +kernel
#print axioms cover_1648576

def state_1648600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 42)))
def hex_1648600 : String := "4442054140430544A005050505"
theorem cover_1648600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1648600)
  decide +kernel
#print axioms cover_1648600

def state_1648615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 105 else 84)))
def hex_1648615 : String := "414043064407070640430544070505"
theorem cover_1648615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1648615)
  decide +kernel
#print axioms cover_1648615

def state_1648631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 200) else (if j.val < 3 then 119 else (if j.val < 4 then 105 else 84)))
def hex_1648631 : String := "404344A0424106054109084442074140430A0707400A07424140434407060707400A0741400A4344070807400A4308074344A00544074206410708"
theorem cover_1648631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648631 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1648631)
  decide +kernel
#print axioms cover_1648631

def state_1648690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 201) else (if j.val < 3 then 119 else (if j.val < 4 then 105 else 84)))
def hex_1648690 : String := "404344A00544424107070A420A0A4305440705"
theorem cover_1648690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1648690)
  decide +kernel
#print axioms cover_1648690

def state_1648709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 85)))
def hex_1648709 : String := "4241060541404308444241400906400A05410908080808"
theorem cover_1648709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1648709)
  decide +kernel
#print axioms cover_1648709
end Mub6.Numerical.CircleFullD0.Forest
