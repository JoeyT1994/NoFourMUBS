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
def state_1483499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 35) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 53)))
def hex_1483499 : String := "404344420541060542410705410A400643060544054205414008430A080543444205414043090509050944054205414043094405080905"
theorem cover_1483499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483499 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1483499)
  decide +kernel
#print axioms cover_1483499

def state_1483556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
def hex_1483556 : String := "430A4442410A400A430A0A070A"
theorem cover_1483556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483556 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1483556)
  decide +kernel
#print axioms cover_1483556

def state_1483570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 102 else 53)))
def hex_1483570 : String := "444241400A08400A08080A"
theorem cover_1483570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1483570)
  decide +kernel
#print axioms cover_1483570

def state_1483581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 103 else 53)))
def hex_1483581 : String := "44424140430A44070A430944070940434442410A400607070A440742410A400A430907074344080944074209070742410A400A090A"
theorem cover_1483581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483581 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1483581)
  decide +kernel
#print axioms cover_1483581

def state_1483635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
def hex_1483635 : String := "4344060A4442414006430644050A050642410A4006430A0A0A"
theorem cover_1483635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1483635)
  decide +kernel
#print axioms cover_1483635

def state_1483661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 102 else 53)))
def hex_1483661 : String := "444241400608060842410A400A090A"
theorem cover_1483661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483661 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1483661)
  decide +kernel
#print axioms cover_1483661

def state_1483677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 103 else 106)))
def hex_1483677 : String := "42414043440642410A0506440542050743440842090744054205070507"
theorem cover_1483677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483677 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1483677)
  decide +kernel
#print axioms cover_1483677
end Mub6.Numerical.CircleFullD0.Forest
