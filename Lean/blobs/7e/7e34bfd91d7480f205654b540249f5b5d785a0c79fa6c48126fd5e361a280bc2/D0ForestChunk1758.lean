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
def state_2295040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 50 else 46)))
def hex_2295040 : String := "4044430941400909094341404244090644094309410A0506064140424409050A4244430609064443090943060A40050644430641420640440906060606"
theorem cover_2295040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295040 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2295040)
  decide +kernel
#print axioms cover_2295040

def state_2295102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 50 else 46)))
def hex_2295102 : String := "4443090943414240440943090944094306410706400907094142400A440A0A0A09"
theorem cover_2295102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295102 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2295102)
  decide +kernel
#print axioms cover_2295102

def state_2295135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 50 else 46)))
def hex_2295135 : String := "44434105064142404409430709050709434107064142404443060707060706"
theorem cover_2295135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2295135)
  decide +kernel
#print axioms cover_2295135

def state_2295166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 46)))
def hex_2295166 : String := "42400906400906"
theorem cover_2295166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295166 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2295166)
  decide +kernel
#print axioms cover_2295166

def state_2295176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 46)))
def hex_2295176 : String := "4443410A090A43410A0505"
theorem cover_2295176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2295176)
  decide +kernel
#print axioms cover_2295176

def state_2295188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 92)))
def hex_2295188 : String := "4341424044094306090640440943090944430609064206094142400A444309094306410A06400A4443410A090A43410A060A420909"
theorem cover_2295188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2295188)
  decide +kernel
#print axioms cover_2295188

def state_2295241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 93)))
def hex_2295241 : String := "43414240444306410A050606404443410A060A43060A06064142400A444306410A0606400A44434107060A43060A42400506400506"
theorem cover_2295241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2295241)
  decide +kernel
#print axioms cover_2295241
end Mub6.Numerical.CircleFullD0.Forest
