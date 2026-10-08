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
def state_1562423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
def hex_1562423 : String := "444243890543414008444208080840440808444205434108050542080841060542434106400544050606430806"
theorem cover_1562423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562423 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1562423)
  decide +kernel
#print axioms cover_1562423

def state_1562468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
def hex_1562468 : String := "4442438909434140440A0A0A4044420A0A420A43410A0A0A440A0A0A4209434140440808094044420A430808420808440A0909"
theorem cover_1562468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562468 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1562468)
  decide +kernel
#print axioms cover_1562468

def state_1562519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 85 else 88)))
def hex_1562519 : String := "4106400609"
theorem cover_1562519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562519 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1562519)
  decide +kernel
#print axioms cover_1562519

def state_1562524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 89)))
def hex_1562524 : String := "42094341400609404442060806444209434107400809080906"
theorem cover_1562524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562524 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1562524)
  decide +kernel
#print axioms cover_1562524

def state_1562549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 44)))
def hex_1562549 : String := "444209434109404442094341090A0909090909"
theorem cover_1562549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562549 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1562549)
  decide +kernel
#print axioms cover_1562549

def state_1562571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 42 else 88)))
def hex_1562571 : String := "05"
theorem cover_1562571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1562571)
  decide +kernel
#print axioms cover_1562571

def state_1562575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
def hex_1562575 : String := "44054205434140054405080505"
theorem cover_1562575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1562575)
  decide +kernel
#print axioms cover_1562575

def state_1562588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
def hex_1562588 : String := "44420543414044050544064205060505424305054341404442054341400544050805054205434108050544420A43060A42094341400A060609054140050905"
theorem cover_1562588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562588 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1562588)
  decide +kernel
#print axioms cover_1562588

def state_1562651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
def hex_1562651 : String := "05"
theorem cover_1562651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1562651)
  decide +kernel
#print axioms cover_1562651

def state_1562652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 85 else 88)))
def hex_1562652 : String := "05"
theorem cover_1562652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562652 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1562652)
  decide +kernel
#print axioms cover_1562652

def state_1562654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 42 else 89)))
def hex_1562654 : String := "43414005090505"
theorem cover_1562654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1562654)
  decide +kernel
#print axioms cover_1562654

def state_1562664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 89)))
def hex_1562664 : String := "4442054341080505420808"
theorem cover_1562664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562664 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1562664)
  decide +kernel
#print axioms cover_1562664
end Mub6.Numerical.CircleFullD0.Forest
