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
def state_2250325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2250325 : String := "414208054244404341050541064244060706430541054208050844054043054105BE05"
theorem cover_2250325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250325 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2250325)
  decide +kernel
#print axioms cover_2250325

def state_2250361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 102) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
def hex_2250361 : String := "4244404306410642080608084405404305410542080508"
theorem cover_2250361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2250361)
  decide +kernel
#print axioms cover_2250361

def state_2250386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 108)))
def hex_2250386 : String := "4043414208064244400643060908BE4142440608064244404341064207064106420706094043080908BE43414208054208BE4142084406084209BE"
theorem cover_2250386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250386 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2250386)
  decide +kernel
#print axioms cover_2250386

def state_2250445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 109)))
def hex_2250445 : String := "40430841084208BE08"
theorem cover_2250445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2250445)
  decide +kernel
#print axioms cover_2250445

def state_2250454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
def hex_2250454 : String := "44400643054105BE404341420805BE4142444006080844050ABE434105BE41420805BE"
theorem cover_2250454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2250454)
  decide +kernel
#print axioms cover_2250454

def state_2250491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 55)))
def hex_2250491 : String := "41084207444007430841080708"
theorem cover_2250491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2250491)
  decide +kernel
#print axioms cover_2250491

def state_2250505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 102) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 55)))
def hex_2250505 : String := "420844404308410842084406080808"
theorem cover_2250505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250505 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2250505)
  decide +kernel
#print axioms cover_2250505

def state_2250521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 55)))
def hex_2250521 : String := "4440070807"
theorem cover_2250521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2250521)
  decide +kernel
#print axioms cover_2250521

def state_2250528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 110)))
def hex_2250528 : String := "43414207444006430508070741420844404307410A07434106420706410842070A4007084207440707"
theorem cover_2250528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2250528)
  decide +kernel
#print axioms cover_2250528

def state_2250570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 182 else 110)))
def hex_2250570 : String := "41084207444007430841080708"
theorem cover_2250570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2250570)
  decide +kernel
#print axioms cover_2250570
end Mub6.Numerical.CircleFullD0.Forest
