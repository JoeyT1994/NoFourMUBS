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
def state_2292905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 54 else 93)))
def hex_2292905 : String := "41404342084408050543084244410840050809094005430642054441050505"
theorem cover_2292905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2292905)
  decide +kernel
#print axioms cover_2292905

def state_2292937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 55 else 46)))
def hex_2292937 : String := "44414007434207444140070807414005430809074207440741400509050741400543050505"
theorem cover_2292937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_2292937)
  decide +kernel
#print axioms cover_2292937

def state_2292976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 102) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 92)))
def hex_2292976 : String := "40434244070544060506434244414043080609400743080741094005430905444109404342070606430809410940050942444106074106054406410605"
theorem cover_2292976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2292976)
  decide +kernel
#print axioms cover_2292976

def state_2293037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 103) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 92)))
def hex_2293037 : String := "40054342074441400743420744074109050707414005430505054205440705"
theorem cover_2293037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_2293037)
  decide +kernel
#print axioms cover_2293037

def state_2293068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 93)))
def hex_2293068 : String := "41400543424441090505090505"
theorem cover_2293068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293068 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2293068)
  decide +kernel
#print axioms cover_2293068

def state_2293081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 47)))
def hex_2293081 : String := "41404342050A0543424441084005080909424441090505094005434244414005430505050544414005430805050505"
theorem cover_2293081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2293081)
  decide +kernel
#print axioms cover_2293081

def state_2293130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
def hex_2293130 : String := "40430A064342444109404308060809444106400607074244060906"
theorem cover_2293130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2293130)
  decide +kernel
#print axioms cover_2293130
end Mub6.Numerical.CircleFullD0.Forest
