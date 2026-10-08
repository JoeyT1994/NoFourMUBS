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
def state_1317342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
def hex_1317342 : String := "41404443080A4342074105404408430542070508420A410540440A430A0A0A440843080A404443080A43420741404406430642070608400608420A410A0A0A"
theorem cover_1317342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317342 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1317342)
  decide +kernel
#print axioms cover_1317342

def state_1317405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 49)))
def hex_1317405 : String := "41404408050540440843084241400908090808"
theorem cover_1317405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1317405)
  decide +kernel
#print axioms cover_1317405

def state_1317424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 24)))
def hex_1317424 : String := "4044064306424140054405430605050644084342414006070506424140440A43420506050A054140440643060908400608"
theorem cover_1317424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1317424)
  decide +kernel
#print axioms cover_1317424

def state_1317473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 24)))
def hex_1317473 : String := "4140440643050908400608"
theorem cover_1317473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317473 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1317473)
  decide +kernel
#print axioms cover_1317473

def state_1317488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1317488 : String := "4442410707410540064305440605420705"
theorem cover_1317488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317488 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1317488)
  decide +kernel
#print axioms cover_1317488

def state_1317508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1317508 : String := "4044434207410540060708084443420741054007054241400807400807410540440908444342070509430708430708"
theorem cover_1317508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317508 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1317508)
  decide +kernel
#print axioms cover_1317508
end Mub6.Numerical.CircleFullD0.Forest
