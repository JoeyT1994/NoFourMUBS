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
def state_2600048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 50 else (if j.val < 4 then 25 else 31)))
def hex_2600048 : String := "43054144420540430507054205404305070544420540090542054043050905"
theorem cover_2600048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600048 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2600048)
  decide +kernel
#print axioms cover_2600048

def state_2600080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 50 else 31)))
def hex_2600080 : String := "414443054042050A054305400805444305404205070543054042050705"
theorem cover_2600080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 29) (hex := hex_2600080)
  decide +kernel
#print axioms cover_2600080

def state_2600110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 62) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 31)))
def hex_2600110 : String := "4440424341064406400605060642430507430A0640424341084440080508410644060A430806424305074341084443054006050841064406400607"
theorem cover_2600110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600110 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2600110)
  decide +kernel
#print axioms cover_2600110

def state_2600170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 63) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 62)))
def hex_2600170 : String := "404243440941400905090943440641060706424305440941420540060509430A4406410640060A"
theorem cover_2600170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2600170)
  decide +kernel
#print axioms cover_2600170

def state_2600211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 102 else (if j.val < 4 then 51 else 63)))
def hex_2600211 : String := "4341444042054305410609054008054440090540420543054108070541444009420943410609060A440940094209DA"
theorem cover_2600211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2600211)
  decide +kernel
#print axioms cover_2600211
end Mub6.Numerical.CircleFullD0.Forest
