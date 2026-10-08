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
def state_1321530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
def hex_1321530 : String := "4240434441420A0942064007080A4441074205070A434441420505080A44050A40434407090743440909440741420A0742404344070907430905400709"
theorem cover_1321530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321530 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1321530)
  decide +kernel
#print axioms cover_1321530

def state_1321592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 21)))
def hex_1321592 : String := "40434406064406064308440842410A0641404344060606430805400608"
theorem cover_1321592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1321592)
  decide +kernel
#print axioms cover_1321592

def state_1321622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 21)))
def hex_1321622 : String := "43444142400608074206400608414244400609400509094206054407414243440606070742064344060506"
theorem cover_1321622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 43) (hex := hex_1321622)
  decide +kernel
#print axioms cover_1321622

def state_1321666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 42 else 21)))
def hex_1321666 : String := "4408414240440809080942084044080508"
theorem cover_1321666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1321666)
  decide +kernel
#print axioms cover_1321666

def state_1321684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 42)))
def hex_1321684 : String := "4142400705074208400708"
theorem cover_1321684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1321684)
  decide +kernel
#print axioms cover_1321684

def state_1321697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 62) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 43)))
def hex_1321697 : String := "4043444142400608074206400608410A42064406064407410A4206430606434408410A42084009084405410A420A400A0A"
theorem cover_1321697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 49) (hex := hex_1321697)
  decide +kernel
#print axioms cover_1321697

def state_1321746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 62) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 43)))
def hex_1321746 : String := "4043440709074309440741094240430907430944050A09"
theorem cover_1321746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1321746 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1321746)
  decide +kernel
#print axioms cover_1321746
end Mub6.Numerical.CircleFullD0.Forest
