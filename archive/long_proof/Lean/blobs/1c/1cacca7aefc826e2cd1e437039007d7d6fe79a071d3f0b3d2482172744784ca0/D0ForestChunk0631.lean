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
def state_1340383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
def hex_1340383 : String := "42444043070A4341424406070707414244064043070A060A0A400743074441424007430744414206070607070707440A07"
theorem cover_1340383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 49) (hex := hex_1340383)
  decide +kernel
#print axioms cover_1340383

def state_1340435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 22)))
def hex_1340435 : String := "4005434105424405400543410544054240050605050505"
theorem cover_1340435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340435 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1340435)
  decide +kernel
#print axioms cover_1340435

def state_1340459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 23)))
def hex_1340459 : String := "05"
theorem cover_1340459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1340459)
  decide +kernel
#print axioms cover_1340459

def state_1340462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
def hex_1340462 : String := "4442400543414405054405420A050505420605"
theorem cover_1340462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340462 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1340462)
  decide +kernel
#print axioms cover_1340462

def state_1340484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 18 else 46)))
def hex_1340484 : String := "05"
theorem cover_1340484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1340484)
  decide +kernel
#print axioms cover_1340484

def state_1340485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 18 else 46)))
def hex_1340485 : String := "4341444240054341440542070544420605420805050542400543410A4442080508050544424005434144060806050542400543080540054344054105070505"
theorem cover_1340485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1340485)
  decide +kernel
#print axioms cover_1340485

def state_1340548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 45 else (if j.val < 4 then 18 else 46)))
def hex_1340548 : String := "05"
theorem cover_1340548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1340548)
  decide +kernel
#print axioms cover_1340548

def state_1340549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 47)))
def hex_1340549 : String := "4240054344414240050A05420840054307054106080505"
theorem cover_1340549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340549 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1340549)
  decide +kernel
#print axioms cover_1340549

def state_1340572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 23)))
def hex_1340572 : String := "05"
theorem cover_1340572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1340572)
  decide +kernel
#print axioms cover_1340572

def state_1340573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 11)))
def hex_1340573 : String := "05"
theorem cover_1340573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1340573)
  decide +kernel
#print axioms cover_1340573

def state_1340576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 22)))
def hex_1340576 : String := "4005434142440A4005434144064206050605050A05"
theorem cover_1340576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340576 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1340576)
  decide +kernel
#print axioms cover_1340576
end Mub6.Numerical.CircleFullD0.Forest
