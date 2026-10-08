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
def state_1028392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1028392 : String := "414243440A41420807080A43440A07440A0A42430844084205054344084008090A"
theorem cover_1028392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1028392)
  decide +kernel
#print axioms cover_1028392

def state_1028429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_1028429 : String := "4041420A0A084142440A4340410A084142440505440505420509400A41060A440943400909400A41424406430906090942440743080809"
theorem cover_1028429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1028429)
  decide +kernel
#print axioms cover_1028429

def state_1028485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_1028485 : String := "4142434441420A400744080608410608440A41420940054307050A43074441070A074208430844084007410708"
theorem cover_1028485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1028485)
  decide +kernel
#print axioms cover_1028485

def state_1028536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
def hex_1028536 : String := "424443410A050A43064142094006440A060A44434140060540060541400A420A0A0A4306414006424443060A0607400A42440A064443060A06"
theorem cover_1028536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1028536)
  decide +kernel
#print axioms cover_1028536

def state_1028593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
def hex_1028593 : String := "4208440843400608400808"
theorem cover_1028593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1028593)
  decide +kernel
#print axioms cover_1028593

def state_1028606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 14)))
def hex_1028606 : String := "4405430540414205440543050742050505"
theorem cover_1028606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028606 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1028606)
  decide +kernel
#print axioms cover_1028606

def state_1028624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 28)))
def hex_1028624 : String := "430540414244050544054305410505420505410505"
theorem cover_1028624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028624 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1028624)
  decide +kernel
#print axioms cover_1028624

def state_1028646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 29)))
def hex_1028646 : String := "40414205050505"
theorem cover_1028646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028646 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1028646)
  decide +kernel
#print axioms cover_1028646
end Mub6.Numerical.CircleFullD0.Forest
