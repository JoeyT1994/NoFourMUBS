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
def state_2254403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 25)))
def hex_2254403 : String := "4142400743440A0A444142074008430A08074142074007430A4441420A06074142070A0707404308084344064106084408414240064306080608420708"
theorem cover_2254403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254403 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_2254403)
  decide +kernel
#print axioms cover_2254403

def state_2254465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
def hex_2254465 : String := "08"
theorem cover_2254465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254465 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2254465)
  decide +kernel
#print axioms cover_2254465

def state_2254469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 25)))
def hex_2254469 : String := "4307440805"
theorem cover_2254469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254469 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2254469)
  decide +kernel
#print axioms cover_2254469

def state_2254476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
def hex_2254476 : String := "4142400743440A0A440841420508050808"
theorem cover_2254476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2254476)
  decide +kernel
#print axioms cover_2254476

def state_2254493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 51)))
def hex_2254493 : String := "41424007430705404344070708434441424007430A08060841424007430A440A0540084344060A44064106080A44084142050805420508"
theorem cover_2254493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254493 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2254493)
  decide +kernel
#print axioms cover_2254493

def state_2254548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 25)))
def hex_2254548 : String := "4441424005434408050508084142054005434408050505"
theorem cover_2254548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2254548)
  decide +kernel
#print axioms cover_2254548

def state_2254571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 25)))
def hex_2254571 : String := "08"
theorem cover_2254571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2254571)
  decide +kernel
#print axioms cover_2254571

def state_2254572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
def hex_2254572 : String := "08"
theorem cover_2254572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2254572)
  decide +kernel
#print axioms cover_2254572

def state_2254575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 24)))
def hex_2254575 : String := "414240444305410508430A4140420A05420A050A440543050A05420A08"
theorem cover_2254575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_2254575)
  decide +kernel
#print axioms cover_2254575

def state_2254608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 44 else 25)))
def hex_2254608 : String := "440A0A"
theorem cover_2254608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254608 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2254608)
  decide +kernel
#print axioms cover_2254608
end Mub6.Numerical.CircleFullD0.Forest
