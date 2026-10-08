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
def state_2262245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
def hex_2262245 : String := "414440430542BE05430542BE0540434207054241080741050743420805420841054405400805444007434207054241BE0709400743074207410907"
theorem cover_2262245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262245 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2262245)
  decide +kernel
#print axioms cover_2262245

def state_2262304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 55)))
def hex_2262304 : String := "4105440909"
theorem cover_2262304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2262304)
  decide +kernel
#print axioms cover_2262304

def state_2262312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
def hex_2262312 : String := "404342BE41050942BE41440909094342BE4105440540090542BE4144054043050A0A4409400943094241090909"
theorem cover_2262312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2262312)
  decide +kernel
#print axioms cover_2262312

def state_2262358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 70 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
def hex_2262358 : String := "4342414440430708080807414409090942414440434207094206094308080644400606064144400943090940090A09"
theorem cover_2262358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262358 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2262358)
  decide +kernel
#print axioms cover_2262358

def state_2262405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
def hex_2262405 : String := "43424108444043084206410806080641440508444009430542410509054009084241084406064144400A0A0844400943424108060942060906"
theorem cover_2262405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2262405)
  decide +kernel
#print axioms cover_2262405
end Mub6.Numerical.CircleFullD0.Forest
