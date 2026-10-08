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
def state_1485622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 26)))
def hex_1485622 : String := "444205074208414008434407060640084344070807"
theorem cover_1485622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1485622)
  decide +kernel
#print axioms cover_1485622

def state_1485645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 52)))
def hex_1485645 : String := "42414043440542054140430A050605050A05414043440707074308074043440742050707430807"
theorem cover_1485645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1485645)
  decide +kernel
#print axioms cover_1485645

def state_1485685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 53)))
def hex_1485685 : String := "4140434442054106400505060606404344050505430505"
theorem cover_1485685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1485685)
  decide +kernel
#print axioms cover_1485685

def state_1485709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
def hex_1485709 : String := "4043444241400606404344070707430906074206410607444206070643444206070606"
theorem cover_1485709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1485709)
  decide +kernel
#print axioms cover_1485709

def state_1485744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
def hex_1485744 : String := "4043444241404344050705434405050505074241404344090606064005054107074442050742410605074344424108050742094106074442050706"
theorem cover_1485744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1485744)
  decide +kernel
#print axioms cover_1485744

def state_1485803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 26)))
def hex_1485803 : String := "4442050742064106404344074205070706"
theorem cover_1485803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1485803)
  decide +kernel
#print axioms cover_1485803

def state_1485821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 27)))
def hex_1485821 : String := "4106400806"
theorem cover_1485821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1485821)
  decide +kernel
#print axioms cover_1485821

def state_1485827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 27)))
def hex_1485827 : String := "40434206444105400506050606"
theorem cover_1485827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485827 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1485827)
  decide +kernel
#print axioms cover_1485827
end Mub6.Numerical.CircleFullD0.Forest
