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
def state_1640348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 63 else (if j.val < 4 then 51 else 39)))
def hex_1640348 : String := "41404307054344070744054241050A410540050540430706430744084241404307050A400643070641400643070606"
theorem cover_1640348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640348 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1640348)
  decide +kernel
#print axioms cover_1640348

def state_1640395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
def hex_1640395 : String := "43440A420A410A0A444209410A0942410A0A4140430A0A0A4043440A0A4409420A410A0A0A"
theorem cover_1640395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1640395)
  decide +kernel
#print axioms cover_1640395

def state_1640433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 9)))
def hex_1640433 : String := "444205430540070505"
theorem cover_1640433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1640433)
  decide +kernel
#print axioms cover_1640433

def state_1640443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 18)))
def hex_1640443 : String := "4240414344094209410A070909094041430708430706410909"
theorem cover_1640443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640443 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1640443)
  decide +kernel
#print axioms cover_1640443

def state_1640472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 50 else 19)))
def hex_1640472 : String := "4442410A0541430540070905420541430540070505"
theorem cover_1640472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640472 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1640472)
  decide +kernel
#print axioms cover_1640472

def state_1640493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 19)))
def hex_1640493 : String := "44420909424140434409420A410A0509094043050905414043444241090707424143070A070744094209414043070609094344090A0940434407050909"
theorem cover_1640493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640493 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1640493)
  decide +kernel
#print axioms cover_1640493

def state_1640554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
def hex_1640554 : String := "43054409420540414305060505"
theorem cover_1640554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640554 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1640554)
  decide +kernel
#print axioms cover_1640554

def state_1640567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
def hex_1640567 : String := "4143050905"
theorem cover_1640567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640567 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1640567)
  decide +kernel
#print axioms cover_1640567
end Mub6.Numerical.CircleFullD0.Forest
