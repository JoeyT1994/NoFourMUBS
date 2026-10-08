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
def state_2290533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
def hex_2290533 : String := "4043440742414307070741434405400605064344054007080744064207064308440542414044050605074105404405434206050605"
theorem cover_2290533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290533 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_2290533)
  decide +kernel
#print axioms cover_2290533

def state_2290586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_2290586 : String := "414043050605404344054241064344054240060505060A4405064305440542410540060505"
theorem cover_2290586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290586 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 37) (hex := hex_2290586)
  decide +kernel
#print axioms cover_2290586

def state_2290626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
def hex_2290626 : String := "40434241064443080643400608064106440606064308424106440640064308064106440606"
theorem cover_2290626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2290626)
  decide +kernel
#print axioms cover_2290626

def state_2290663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
def hex_2290663 : String := "404342410A440A0A0A06434208410744404307090707424144400609094440430A0643080940090941074440060909"
theorem cover_2290663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2290663)
  decide +kernel
#print axioms cover_2290663

def state_2290714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 22)))
def hex_2290714 : String := "414443400708400642060643400A0840064241060741060A440743400742074407414307070707"
theorem cover_2290714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290714 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2290714)
  decide +kernel
#print axioms cover_2290714

def state_2290754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
def hex_2290754 : String := "4443400608064340064241084408080A06"
theorem cover_2290754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290754 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2290754)
  decide +kernel
#print axioms cover_2290754
end Mub6.Numerical.CircleFullD0.Forest
