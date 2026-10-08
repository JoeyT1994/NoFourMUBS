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
def state_1591311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 50)))
def hex_1591311 : String := "414340420844410A08410A084244060544414306400A06064143404205440605050A43050A400A0A434008420544060540080A"
theorem cover_1591311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591311 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1591311)
  decide +kernel
#print axioms cover_1591311

def state_1591362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 51)))
def hex_1591362 : String := "414340420A44410A0A4143050A0505400A0A43400805400805"
theorem cover_1591362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591362 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1591362)
  decide +kernel
#print axioms cover_1591362

def state_1591387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 25)))
def hex_1591387 : String := "420A440A0A"
theorem cover_1591387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1591387)
  decide +kernel
#print axioms cover_1591387

def state_1591394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 25)))
def hex_1591394 : String := "42444043050A050544404341420744070742054406054142074407400A07420A44400A07400A054305074043414205050541420544400A05050505"
theorem cover_1591394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591394 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1591394)
  decide +kernel
#print axioms cover_1591394

def state_1591453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 25)))
def hex_1591453 : String := "42440A0544400A410743070A400A05"
theorem cover_1591453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591453 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1591453)
  decide +kernel
#print axioms cover_1591453

def state_1591468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
def hex_1591468 : String := "4342054440414306420544400A050505050542054440410A0A0505"
theorem cover_1591468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591468 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1591468)
  decide +kernel
#print axioms cover_1591468

def state_1591498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
def hex_1591498 : String := "43440542434109094105090505"
theorem cover_1591498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591498 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1591498)
  decide +kernel
#print axioms cover_1591498

def state_1591513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
def hex_1591513 : String := "42414309054340050640050905"
theorem cover_1591513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591513 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1591513)
  decide +kernel
#print axioms cover_1591513
end Mub6.Numerical.CircleFullD0.Forest
