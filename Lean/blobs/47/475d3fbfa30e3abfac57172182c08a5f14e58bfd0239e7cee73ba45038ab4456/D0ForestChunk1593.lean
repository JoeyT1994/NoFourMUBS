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
def state_2255501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 25)))
def hex_2255501 : String := "43440841424043440841424006434406410608070608084344410508410742400807074407070808440841424008070708"
theorem cover_2255501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255501 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 49) (hex := hex_2255501)
  decide +kernel
#print axioms cover_2255501

def state_2255550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 25)))
def hex_2255550 : String := "434441070841074240434408410708080707440741074240080707"
theorem cover_2255550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2255550)
  decide +kernel
#print axioms cover_2255550

def state_2255577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
def hex_2255577 : String := "42404344080A44080506400808"
theorem cover_2255577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255577 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2255577)
  decide +kernel
#print axioms cover_2255577

def state_2255594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 13)))
def hex_2255594 : String := "4440074307414442074007430A414442070A420740070907070707"
theorem cover_2255594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 27) (hex := hex_2255594)
  decide +kernel
#print axioms cover_2255594

def state_2255623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
def hex_2255623 : String := "43414207060741420744064007430741060707"
theorem cover_2255623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2255623)
  decide +kernel
#print axioms cover_2255623

def state_2255643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 26)))
def hex_2255643 : String := "4142444007430A41060A4007430741420744060707440640430641060743054105420A054207440807"
theorem cover_2255643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2255643)
  decide +kernel
#print axioms cover_2255643

def state_2255687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 52)))
def hex_2255687 : String := "40434106074144064207060743414406420A060A414406424043074144060707430A414406090A064408420708"
theorem cover_2255687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255687 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2255687)
  decide +kernel
#print axioms cover_2255687

def state_2255733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
def hex_2255733 : String := "430741420744400743074106070707"
theorem cover_2255733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2255733)
  decide +kernel
#print axioms cover_2255733
end Mub6.Numerical.CircleFullD0.Forest
