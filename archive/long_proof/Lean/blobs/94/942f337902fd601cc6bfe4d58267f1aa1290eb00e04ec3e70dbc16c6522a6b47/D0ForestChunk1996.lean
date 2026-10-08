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
def state_2559628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_2559628 : String := "420643074107440706"
theorem cover_2559628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559628 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2559628)
  decide +kernel
#print axioms cover_2559628

def state_2559639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
def hex_2559639 : String := "444043074207070707"
theorem cover_2559639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2559639)
  decide +kernel
#print axioms cover_2559639

def state_2559649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 48)))
def hex_2559649 : String := "4043420808424144404307424441074009070707070744404342E20942E20943074207074043084241074440090707070709430707"
theorem cover_2559649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_2559649)
  decide +kernel
#print axioms cover_2559649

def state_2559702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 49)))
def hex_2559702 : String := "40430842410744400907070707"
theorem cover_2559702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2559702)
  decide +kernel
#print axioms cover_2559702

def state_2559716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
def hex_2559716 : String := "44404243444105400605074406410640060709420505404243074107090707"
theorem cover_2559716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559716 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2559716)
  decide +kernel
#print axioms cover_2559716

def state_2559752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 48)))
def hex_2559752 : String := "444042434406090606424307070740424307090907"
theorem cover_2559752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559752 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_2559752)
  decide +kernel
#print axioms cover_2559752

def state_2559774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 96)))
def hex_2559774 : String := "404243E24106440640064243090809430906424341074440E20707414440060507444042080842050540424307080707430709"
theorem cover_2559774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559774 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2559774)
  decide +kernel
#print axioms cover_2559774

def state_2559825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 97)))
def hex_2559825 : String := "4042434109444009090941094440090909094243070707"
theorem cover_2559825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2559825)
  decide +kernel
#print axioms cover_2559825

def state_2559848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 58 else (if j.val < 4 then 59 else 48)))
def hex_2559848 : String := "4144064006424307070744400642080640424341094408090606424341074408070809"
theorem cover_2559848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2559848)
  decide +kernel
#print axioms cover_2559848

def state_2559883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 59 else (if j.val < 4 then 29 else 48)))
def hex_2559883 : String := "430909"
theorem cover_2559883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2559883)
  decide +kernel
#print axioms cover_2559883
end Mub6.Numerical.CircleFullD0.Forest
