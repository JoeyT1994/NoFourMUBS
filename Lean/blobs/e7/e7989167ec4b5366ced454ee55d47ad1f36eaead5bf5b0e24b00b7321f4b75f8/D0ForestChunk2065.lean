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
def state_2576039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 8)))
def hex_2576039 : String := "4340410707094041444243054007050742430540414407050A054307400A090A41094409420509"
theorem cover_2576039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_2576039)
  decide +kernel
#print axioms cover_2576039

def state_2576079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 9)))
def hex_2576079 : String := "4340060540414443054205050606410505"
theorem cover_2576079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2576079)
  decide +kernel
#print axioms cover_2576079

def state_2576096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 9)))
def hex_2576096 : String := "4340414442050906064105054041444243054044410506060543400A05400A44090A420643064006440A06440A06414405420505440A42050A"
theorem cover_2576096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2576096)
  decide +kernel
#print axioms cover_2576096

def state_2576153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_2576153 : String := "4206430644414243064006440A060A0A4142060A06"
theorem cover_2576153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_2576153)
  decide +kernel
#print axioms cover_2576153

def state_2576174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_2576174 : String := "4006414206430644420643064006414442054305404105050506060606"
theorem cover_2576174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 29) (hex := hex_2576174)
  decide +kernel
#print axioms cover_2576174

def state_2576205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2576205 : String := "430544054305440506"
theorem cover_2576205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2576205)
  decide +kernel
#print axioms cover_2576205

def state_2576215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_2576215 : String := "440509"
theorem cover_2576215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2576215)
  decide +kernel
#print axioms cover_2576215

def state_2576219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_2576219 : String := "4205430540410544050505"
theorem cover_2576219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576219 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2576219)
  decide +kernel
#print axioms cover_2576219

def state_2576231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
def hex_2576231 : String := "430544054041070605"
theorem cover_2576231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2576231)
  decide +kernel
#print axioms cover_2576231

def state_2576240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_2576240 : String := "43440540410906054440414205430508420543054405050540414243050743440540070544080742430507430944400705074142050909"
theorem cover_2576240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576240 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2576240)
  decide +kernel
#print axioms cover_2576240
end Mub6.Numerical.CircleFullD0.Forest
