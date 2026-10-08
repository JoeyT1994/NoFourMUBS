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
def state_967293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
def hex_967293 : String := "400A42440A434140064205050A0A440A434106400605414007420A070A"
theorem cover_967293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_967293)
  decide +kernel
#print axioms cover_967293

def state_967322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 29)))
def hex_967322 : String := "4306414006420906400642444306090607"
theorem cover_967322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_967322)
  decide +kernel
#print axioms cover_967322

def state_967341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 14)))
def hex_967341 : String := "444340420808084042074108444340080707080708"
theorem cover_967341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_967341)
  decide +kernel
#print axioms cover_967341

def state_967364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 28)))
def hex_967364 : String := "4041084244050844050608"
theorem cover_967364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_967364)
  decide +kernel
#print axioms cover_967364

def state_967377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
def hex_967377 : String := "4244430808084443084041084208080808"
theorem cover_967377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_967377)
  decide +kernel
#print axioms cover_967377

def state_967395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 28)))
def hex_967395 : String := "444340410842084405050840410942094443400905090841080708"
theorem cover_967395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_967395)
  decide +kernel
#print axioms cover_967395

def state_967424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 56)))
def hex_967424 : String := "404142080842440505440505410805"
theorem cover_967424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_967424)
  decide +kernel
#print axioms cover_967424

def state_967441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
def hex_967441 : String := "424443080808444308404108080808"
theorem cover_967441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967441 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_967441)
  decide +kernel
#print axioms cover_967441

def state_967456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
def hex_967456 : String := "42444340410805054041090A41080608444340414205050505404142440A084443050A08420A440543050841084205054308400808"
theorem cover_967456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_967456)
  decide +kernel
#print axioms cover_967456

def state_967509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 56)))
def hex_967509 : String := "410842084443050608"
theorem cover_967509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967509 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_967509)
  decide +kernel
#print axioms cover_967509

def state_967518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 57)))
def hex_967518 : String := "430808"
theorem cover_967518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967518 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_967518)
  decide +kernel
#print axioms cover_967518

def state_967521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
def hex_967521 : String := "410842084443080808"
theorem cover_967521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_967521)
  decide +kernel
#print axioms cover_967521

def state_967530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 29)))
def hex_967530 : String := "08"
theorem cover_967530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967530 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_967530)
  decide +kernel
#print axioms cover_967530
end Mub6.Numerical.CircleFullD0.Forest
