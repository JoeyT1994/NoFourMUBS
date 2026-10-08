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
def state_1628603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
def hex_1628603 : String := "4243410A0707434140440A094443420541050542070A05400A4443050705410A0A"
theorem cover_1628603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1628603)
  decide +kernel
#print axioms cover_1628603

def state_1628636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_1628636 : String := "4007440707"
theorem cover_1628636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1628636)
  decide +kernel
#print axioms cover_1628636

def state_1628643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_1628643 : String := "44434142400644064309060606064341420909420906410A06"
theorem cover_1628643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1628643)
  decide +kernel
#print axioms cover_1628643

def state_1628673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
def hex_1628673 : String := "44434142400644064341424009444341090606090606410A06060606434142400944434109090A0A4006440609420A0641420A0606"
theorem cover_1628673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628673 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 53) (hex := hex_1628673)
  decide +kernel
#print axioms cover_1628673

def state_1628736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
def hex_1628736 : String := "44D34341424044D343080A44D3430541420540080508400644064308064208064142400644D343410A0A0A0606"
theorem cover_1628736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628736 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_1628736)
  decide +kernel
#print axioms cover_1628736

def state_1628782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 64)))
def hex_1628782 : String := "D3"
theorem cover_1628782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1628782)
  decide +kernel
#print axioms cover_1628782

def state_1628784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 65)))
def hex_1628784 : String := "41424044D305054044D3430541050505420508"
theorem cover_1628784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628784 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1628784)
  decide +kernel
#print axioms cover_1628784

def state_1628803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 65)))
def hex_1628803 : String := "41424044D343410505414205094205050940440643414205060606440943050942404406430506054006440605"
theorem cover_1628803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1628803)
  decide +kernel
#print axioms cover_1628803

def state_1628848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 32)))
def hex_1628848 : String := "40064406434142400707060641424006440643410505060606"
theorem cover_1628848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1628848)
  decide +kernel
#print axioms cover_1628848
end Mub6.Numerical.CircleFullD0.Forest
