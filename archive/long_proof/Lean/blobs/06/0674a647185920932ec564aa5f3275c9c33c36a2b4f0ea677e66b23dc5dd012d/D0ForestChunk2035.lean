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
def state_2568865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 95)))
def hex_2568865 : String := "41404342444140054342060A0A050544414005430909050542444140050A0505444140050905054342440A0644410A0A410906420A440A41090A400543060A"
theorem cover_2568865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2568865)
  decide +kernel
#print axioms cover_2568865

def state_2568928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_2568928 : String := "4306420A440A410A06"
theorem cover_2568928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568928 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2568928)
  decide +kernel
#print axioms cover_2568928

def state_2568939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 46)))
def hex_2568939 : String := "4042434144054006050A08434106440640060806420505"
theorem cover_2568939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2568939)
  decide +kernel
#print axioms cover_2568939

def state_2568967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 94)))
def hex_2568967 : String := "4042434106080606420A430A06"
theorem cover_2568967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568967 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2568967)
  decide +kernel
#print axioms cover_2568967

def state_2568980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 95)))
def hex_2568980 : String := "404243E20843410644064006434208080806424341440A40E20A0A0843414440060540430908430505440A4043420A09080A08"
theorem cover_2568980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2568980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2568980)
  decide +kernel
#print axioms cover_2568980

def state_2569031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 47)))
def hex_2569031 : String := "44404207080A4042434408414007080708434408414008080808420A430A08"
theorem cover_2569031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2569031)
  decide +kernel
#print axioms cover_2569031

def state_2569062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 59 else 47)))
def hex_2569062 : String := "08"
theorem cover_2569062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569062 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2569062)
  decide +kernel
#print axioms cover_2569062

def state_2569063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 29 else 47)))
def hex_2569063 : String := "43414406400643090644400643420808084043424408410908060643424408410908090808"
theorem cover_2569063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2569063)
  decide +kernel
#print axioms cover_2569063
end Mub6.Numerical.CircleFullD0.Forest
