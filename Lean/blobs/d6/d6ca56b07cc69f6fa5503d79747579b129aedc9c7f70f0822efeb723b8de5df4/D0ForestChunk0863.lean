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
def state_1507768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 101 else 60)))
def hex_1507768 : String := "4142444043064107064341424408050508414207440805420744064005084005430541054205054406054244400643080A40054305410707440605"
theorem cover_1507768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507768 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1507768)
  decide +kernel
#print axioms cover_1507768

def state_1507827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 61)))
def hex_1507827 : String := "40054305410505"
theorem cover_1507827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507827 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1507827)
  decide +kernel
#print axioms cover_1507827

def state_1507834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 50 else 30)))
def hex_1507834 : String := "440605"
theorem cover_1507834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1507834)
  decide +kernel
#print axioms cover_1507834

def state_1507840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
def hex_1507840 : String := "414342070642074406074342070607"
theorem cover_1507840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1507840)
  decide +kernel
#print axioms cover_1507840

def state_1507858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 60)))
def hex_1507858 : String := "44404307074341420744070707074007430707"
theorem cover_1507858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1507858)
  decide +kernel
#print axioms cover_1507858

def state_1507877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 60)))
def hex_1507877 : String := "444006434142440605060641424440064306074007074406400543054105054244060706404305410505430541420505420705"
theorem cover_1507877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1507877)
  decide +kernel
#print axioms cover_1507877

def state_1507928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 88) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 60)))
def hex_1507928 : String := "424407074440414342070607430607414342074406400643414207050641070788434207060A40410707414342074440054305070507434207444007070507"
theorem cover_1507928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507928 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1507928)
  decide +kernel
#print axioms cover_1507928
end Mub6.Numerical.CircleFullD0.Forest
