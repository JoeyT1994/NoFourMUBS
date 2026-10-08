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
def state_1583471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 70) else (if j.val < 3 then 98 else (if j.val < 4 then 108 else 103)))
def hex_1583471 : String := "4244404341420A0942054407050A434108050A40434106050643050544404309064308084006430806"
theorem cover_1583471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583471 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1583471)
  decide +kernel
#print axioms cover_1583471

def state_1583512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 71) else (if j.val < 3 then 98 else (if j.val < 4 then 108 else 103)))
def hex_1583512 : String := "4244404341420505050A05054440430707434109054109074007430505"
theorem cover_1583512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583512 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1583512)
  decide +kernel
#print axioms cover_1583512

def state_1583541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 109 else 103)))
def hex_1583541 : String := "41420A06420A4440064106434205070606"
theorem cover_1583541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583541 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1583541)
  decide +kernel
#print axioms cover_1583541

def state_1583558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 99 else (if j.val < 4 then 54 else 51)))
def hex_1583558 : String := "444043090943090940430706434142440806064244400709070706"
theorem cover_1583558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1583558)
  decide +kernel
#print axioms cover_1583558

def state_1583585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 55 else 51)))
def hex_1583585 : String := "410642440A0606"
theorem cover_1583585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1583585)
  decide +kernel
#print axioms cover_1583585

def state_1583593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 24)))
def hex_1583593 : String := "430905"
theorem cover_1583593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1583593)
  decide +kernel
#print axioms cover_1583593

def state_1583597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 25)))
def hex_1583597 : String := "40414244050605424409070941424409430809084244430909430A4041090741084244094307070944090A"
theorem cover_1583597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1583597)
  decide +kernel
#print axioms cover_1583597

def state_1583640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
def hex_1583640 : String := "40064142440506054244400509400643410642440940064308060906440506"
theorem cover_1583640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583640 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 31) (hex := hex_1583640)
  decide +kernel
#print axioms cover_1583640
end Mub6.Numerical.CircleFullD0.Forest
