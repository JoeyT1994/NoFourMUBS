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
def state_1341297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 36 else 47)))
def hex_1341297 : String := "40444142084307400744090708084441420609064142084305404409070508"
theorem cover_1341297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341297 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1341297)
  decide +kernel
#print axioms cover_1341297

def state_1341329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 60 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 37 else 47)))
def hex_1341329 : String := "4441424308400544410506084340054409414208090805420843084005444105060841420843080508"
theorem cover_1341329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341329 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1341329)
  decide +kernel
#print axioms cover_1341329

def state_1341370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 61 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 37 else 47)))
def hex_1341370 : String := "4441424306404406410A060643090942064306064142430A40080A43404409410907094044410909410A42080909420843400709400809"
theorem cover_1341370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1341370)
  decide +kernel
#print axioms cover_1341370

def state_1341425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 45 else (if j.val < 4 then 18 else 47)))
def hex_1341425 : String := "434007440907404441424340050905054243070505414243070505074409410909"
theorem cover_1341425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1341425)
  decide +kernel
#print axioms cover_1341425

def state_1341458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 47)))
def hex_1341458 : String := "42430840084406084307400707"
theorem cover_1341458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341458 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1341458)
  decide +kernel
#print axioms cover_1341458

def state_1341471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
def hex_1341471 : String := "4441420609064142430540440641420A09060509420609"
theorem cover_1341471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341471 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1341471)
  decide +kernel
#print axioms cover_1341471

def state_1341496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 46)))
def hex_1341496 : String := "414243400544064142060906054340050905424306400506430A05"
theorem cover_1341496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341496 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1341496)
  decide +kernel
#print axioms cover_1341496
end Mub6.Numerical.CircleFullD0.Forest
