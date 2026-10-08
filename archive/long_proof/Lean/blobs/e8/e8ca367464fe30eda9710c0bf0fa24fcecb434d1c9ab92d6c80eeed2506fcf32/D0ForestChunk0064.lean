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
def state_952774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 54)))
def hex_952774 : String := "410A444340060A404241064443064005420506060642410A444340420A060A4042410508410508420A0A0A410A4443094042410608060A06430606"
theorem cover_952774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952774 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_952774)
  decide +kernel
#print axioms cover_952774

def state_952833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 55)))
def hex_952833 : String := "430640060A"
theorem cover_952833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952833 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_952833)
  decide +kernel
#print axioms cover_952833

def state_952838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 27)))
def hex_952838 : String := "444306400641064244430640064106420A06060606"
theorem cover_952838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952838 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_952838)
  decide +kernel
#print axioms cover_952838

def state_952862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 54)))
def hex_952862 : String := "40064142444305400642414443054006050605410605060642440543054006410605440506"
theorem cover_952862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_952862)
  decide +kernel
#print axioms cover_952862

def state_952900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
def hex_952900 : String := "414244434006424106C706404241050A06424144434005080505C7414443060506C74306064443064006410642C7060642C744430640064142C7060A06"
theorem cover_952900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_952900)
  decide +kernel
#print axioms cover_952900

def state_952966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 108)))
def hex_952966 : String := "424144434006424106060640424106C70642414443080843064005420506C741440806C706C7414443064006424106060606C7"
theorem cover_952966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_952966)
  decide +kernel
#print axioms cover_952966
end Mub6.Numerical.CircleFullD0.Forest
