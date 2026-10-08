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
def state_2270427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
def hex_2270427 : String := "4243400A0A40440606440606430808"
theorem cover_2270427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2270427)
  decide +kernel
#print axioms cover_2270427

def state_2270444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 90 else (if j.val < 4 then 45 else 57)))
def hex_2270444 : String := "43444041420643440506060641420607064041060606440606"
theorem cover_2270444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2270444)
  decide +kernel
#print axioms cover_2270444

def state_2270470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 90 else 57)))
def hex_2270470 : String := "444041424305440506054243440906060941054243440506064305074041424340060506430540060542060941424305060542064344050606"
theorem cover_2270470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270470 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 57) (hex := hex_2270470)
  decide +kernel
#print axioms cover_2270470

def state_2270527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 91 else 57)))
def hex_2270527 : String := "444041070607400606"
theorem cover_2270527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270527 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2270527)
  decide +kernel
#print axioms cover_2270527

def state_2270536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
def hex_2270536 : String := "42434440060606064344404109084142430A0608084041420609064142064344060606064440060606"
theorem cover_2270536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2270536)
  decide +kernel
#print axioms cover_2270536

def state_2270578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 29)))
def hex_2270578 : String := "434007444142084308080741080640440605440606"
theorem cover_2270578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2270578)
  decide +kernel
#print axioms cover_2270578

def state_2270601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 29)))
def hex_2270601 : String := "4441424307400744410806064340074441050707400944414243090909094109070741420743074007444106060607"
theorem cover_2270601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2270601)
  decide +kernel
#print axioms cover_2270601

def state_2270651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 90 else (if j.val < 4 then 44 else 58)))
def hex_2270651 : String := "434044410807074441084207430508084044410806064441080608"
theorem cover_2270651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2270651)
  decide +kernel
#print axioms cover_2270651
end Mub6.Numerical.CircleFullD0.Forest
