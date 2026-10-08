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
def state_1482345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 66) else (if j.val < 3 then 76 else (if j.val < 4 then 206 else 104)))
def hex_1482345 : String := "44420541400643064405420506054241400709054140430A0A434442090609444205410A050A404306054344050905"
theorem cover_1482345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482345 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1482345)
  decide +kernel
#print axioms cover_1482345

def state_1482392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 66) else (if j.val < 3 then 76 else (if j.val < 4 then 207 else 104)))
def hex_1482392 : String := "440542054140434442050A0808434442054140430A054344050A05054205410A4008430A0544050805"
theorem cover_1482392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1482392)
  decide +kernel
#print axioms cover_1482392

def state_1482433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 66) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
def hex_1482433 : String := "434442054140430844054205080805420941400909404309050944054205414043444205414043090509050944054205410605430944050605"
theorem cover_1482433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1482433)
  decide +kernel
#print axioms cover_1482433

def state_1482490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 67) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
def hex_1482490 : String := "05"
theorem cover_1482490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1482490)
  decide +kernel
#print axioms cover_1482490

def state_1482493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 104)))
def hex_1482493 : String := "43440642410A4006430644060A074407424140430A0A4344070A074043064405074344070A0707"
theorem cover_1482493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482493 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1482493)
  decide +kernel
#print axioms cover_1482493

def state_1482533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 206 else 104)))
def hex_1482533 : String := "4408424140430844080A0840430844424108050642410A400609070807"
theorem cover_1482533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482533 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1482533)
  decide +kernel
#print axioms cover_1482533
end Mub6.Numerical.CircleFullD0.Forest
