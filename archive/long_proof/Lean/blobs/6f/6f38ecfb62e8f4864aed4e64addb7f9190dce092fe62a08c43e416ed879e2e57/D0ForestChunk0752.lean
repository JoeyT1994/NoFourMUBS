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
def state_1481398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 25)))
def hex_1481398 : String := "44420541404405430805080542054140434442050842074140430780094043070509440A4205418005434408090A05"
theorem cover_1481398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1481398)
  decide +kernel
#print axioms cover_1481398

def state_1481445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1481445 : String := "43080A"
theorem cover_1481445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1481445)
  decide +kernel
#print axioms cover_1481445

def state_1481448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1481448 : String := "4005430505"
theorem cover_1481448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481448 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1481448)
  decide +kernel
#print axioms cover_1481448

def state_1481456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 25)))
def hex_1481456 : String := "08"
theorem cover_1481456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1481456)
  decide +kernel
#print axioms cover_1481456

def state_1481458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 50)))
def hex_1481458 : String := "08"
theorem cover_1481458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481458 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1481458)
  decide +kernel
#print axioms cover_1481458

def state_1481463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 51)))
def hex_1481463 : String := "440842414043088008404306440642418006060808"
theorem cover_1481463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1481463)
  decide +kernel
#print axioms cover_1481463

def state_1481485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 102)))
def hex_1481485 : String := "424140440880084044054306050807"
theorem cover_1481485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1481485)
  decide +kernel
#print axioms cover_1481485

def state_1481500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 103)))
def hex_1481500 : String := "4241804043444205064241800541800644420507420541804043050543440505054344084241800508440A420541804043080508410707"
theorem cover_1481500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1481500)
  decide +kernel
#print axioms cover_1481500

def state_1481555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
def hex_1481555 : String := "08"
theorem cover_1481555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1481555)
  decide +kernel
#print axioms cover_1481555

def state_1481556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
def hex_1481556 : String := "4043440642414006080506444205064241400543050505414006070643084408420A08"
theorem cover_1481556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481556 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1481556)
  decide +kernel
#print axioms cover_1481556

def state_1481591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 51)))
def hex_1481591 : String := "07"
theorem cover_1481591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481591 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1481591)
  decide +kernel
#print axioms cover_1481591

def state_1481592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1481592 : String := "08"
theorem cover_1481592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1481592)
  decide +kernel
#print axioms cover_1481592

def state_1481593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1481593 : String := "4043084408424140430605430805050808"
theorem cover_1481593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1481593)
  decide +kernel
#print axioms cover_1481593

def state_1481610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
def hex_1481610 : String := "430844084241080808"
theorem cover_1481610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1481610)
  decide +kernel
#print axioms cover_1481610

def state_1481619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_1481619 : String := "420540434405414205060544414205060541420540060805430844084142050805"
theorem cover_1481619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481619 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1481619)
  decide +kernel
#print axioms cover_1481619
end Mub6.Numerical.CircleFullD0.Forest
