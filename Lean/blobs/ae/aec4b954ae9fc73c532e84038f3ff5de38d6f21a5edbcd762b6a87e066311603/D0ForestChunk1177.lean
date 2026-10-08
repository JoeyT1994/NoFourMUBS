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
def state_1582969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 107 else 103)))
def hex_1582969 : String := "4142444340414205080505404142440505094205070543050544434007084009084340070540070542440505444307400705430505"
theorem cover_1582969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1582969)
  decide +kernel
#print axioms cover_1582969

def state_1583022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 99 else (if j.val < 4 then 53 else 51)))
def hex_1583022 : String := "44434009094009094340070A40074142440808084244070707"
theorem cover_1583022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583022 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1583022)
  decide +kernel
#print axioms cover_1583022

def state_1583048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
def hex_1583048 : String := "41424440050A06064244400843410A08084006434106080644400543050506"
theorem cover_1583048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583048 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1583048)
  decide +kernel
#print axioms cover_1583048

def state_1583080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
def hex_1583080 : String := "4244400A43410A420A090A40434106420A060643410A420A440A0A0A4440050940064341064244400609060606"
theorem cover_1583080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1583080)
  decide +kernel
#print axioms cover_1583080

def state_1583127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 50)))
def hex_1583127 : String := "404341420A44050A42084440080940080A0A4341420A4409400A430909420A4440094306094043410A0A0A4341420A09060A0A"
theorem cover_1583127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583127 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1583127)
  decide +kernel
#print axioms cover_1583127

def state_1583179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 51)))
def hex_1583179 : String := "4341420A440A06420A4440080A400643410A08060A"
theorem cover_1583179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1583179)
  decide +kernel
#print axioms cover_1583179

def state_1583202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 54 else 51)))
def hex_1583202 : String := "420A44400A43410A0A0A400A43410A420A440A0A0A"
theorem cover_1583202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1583202)
  decide +kernel
#print axioms cover_1583202
end Mub6.Numerical.CircleFullD0.Forest
