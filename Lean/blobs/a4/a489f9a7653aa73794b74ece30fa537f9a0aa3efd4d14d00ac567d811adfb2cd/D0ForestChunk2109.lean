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
def state_2586679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 46 else 38)))
def hex_2586679 : String := "4340440806054044414243080A0808414243060A430808420608444142054305400A0542054305400805414205430540440A0A054205430540440841080605"
theorem cover_2586679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2586679)
  decide +kernel
#print axioms cover_2586679

def state_2586742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 46 else 38)))
def hex_2586742 : String := "434008094044080844414243074007060709414243400805404408084409410909430840080942430940080909"
theorem cover_2586742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2586742)
  decide +kernel
#print axioms cover_2586742

def state_2586787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 38)))
def hex_2586787 : String := "4243400609404408064441420509094142054305400605064340080940084409410908"
theorem cover_2586787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586787 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2586787)
  decide +kernel
#print axioms cover_2586787

def state_2586824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 46 else 39)))
def hex_2586824 : String := "43400644050640064441424305054340060540440A070542064306400605410706"
theorem cover_2586824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586824 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2586824)
  decide +kernel
#print axioms cover_2586824

def state_2586858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 92 else 39)))
def hex_2586858 : String := "4006444109094142060606"
theorem cover_2586858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2586858)
  decide +kernel
#print axioms cover_2586858

def state_2586870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 93 else 39)))
def hex_2586870 : String := "4441080806"
theorem cover_2586870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2586870)
  decide +kernel
#print axioms cover_2586870

def state_2586876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 93 else 78)))
def hex_2586876 : String := "414243404408064405054044410A0841070744410A09410A420509434008094044080844094109094243400609404408064409094308400809"
theorem cover_2586876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586876 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2586876)
  decide +kernel
#print axioms cover_2586876
end Mub6.Numerical.CircleFullD0.Forest
