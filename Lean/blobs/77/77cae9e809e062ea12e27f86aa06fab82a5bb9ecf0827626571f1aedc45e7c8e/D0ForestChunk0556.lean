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
def state_1322294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 22)))
def hex_1322294 : String := "434440060A0A444006090A"
theorem cover_1322294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1322294)
  decide +kernel
#print axioms cover_1322294

def state_1322308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
def hex_1322308 : String := "4108420608"
theorem cover_1322308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1322308)
  decide +kernel
#print axioms cover_1322308

def state_1322314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 62) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
def hex_1322314 : String := "420A434440074108420A080808"
theorem cover_1322314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322314 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1322314)
  decide +kernel
#print axioms cover_1322314

def state_1322328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 62 else (if j.val < 4 then 44 else 44)))
def hex_1322328 : String := "434440064206410A060A4440064206410A060A"
theorem cover_1322328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1322328)
  decide +kernel
#print axioms cover_1322328

def state_1322347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 44)))
def hex_1322347 : String := "4344404108064142434440060A0A4440060A08434440074107E108084243440606440606E140084108420A0844400741084243440606070808"
theorem cover_1322347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1322347)
  decide +kernel
#print axioms cover_1322347

def state_1322404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 45)))
def hex_1322404 : String := "40080A"
theorem cover_1322404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1322404)
  decide +kernel
#print axioms cover_1322404

def state_1322407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 45 else 22)))
def hex_1322407 : String := "444007410842090808"
theorem cover_1322407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322407 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1322407)
  decide +kernel
#print axioms cover_1322407

def state_1322416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 23)))
def hex_1322416 : String := "40080A"
theorem cover_1322416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322416 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1322416)
  decide +kernel
#print axioms cover_1322416

def state_1322419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 11)))
def hex_1322419 : String := "444007410842090808"
theorem cover_1322419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322419 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1322419)
  decide +kernel
#print axioms cover_1322419

def state_1322431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
def hex_1322431 : String := "42404344050A0505404344410508094405410542054009054344050605"
theorem cover_1322431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322431 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1322431)
  decide +kernel
#print axioms cover_1322431

def state_1322461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_1322461 : String := "4043084405420541050808"
theorem cover_1322461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322461 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1322461)
  decide +kernel
#print axioms cover_1322461

def state_1322474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
def hex_1322474 : String := "08"
theorem cover_1322474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322474 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1322474)
  decide +kernel
#print axioms cover_1322474

def state_1322476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
def hex_1322476 : String := "08"
theorem cover_1322476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1322476)
  decide +kernel
#print axioms cover_1322476

def state_1322478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
def hex_1322478 : String := "42404344050A05054043440809440541054205400905430805"
theorem cover_1322478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322478 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1322478)
  decide +kernel
#print axioms cover_1322478
end Mub6.Numerical.CircleFullD0.Forest
