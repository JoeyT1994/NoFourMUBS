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
def state_956389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
def hex_956389 : String := "4342444008410808400641420506424344080505430644080544090642440805440840410507414306054342080605"
theorem cover_956389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_956389)
  decide +kernel
#print axioms cover_956389

def state_956436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
def hex_956436 : String := "43424408400741424344070744080543074407074243074408070744080742440840410508414342050805434208080544084007414342070708430708"
theorem cover_956436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956436 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_956436)
  decide +kernel
#print axioms cover_956436

def state_956497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
def hex_956497 : String := "40410607414306054344420706064442050705"
theorem cover_956497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956497 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_956497)
  decide +kernel
#print axioms cover_956497

def state_956516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 37 else 27)))
def hex_956516 : String := "444041060741430642440806064309424408070907"
theorem cover_956516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_956516)
  decide +kernel
#print axioms cover_956516

def state_956538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
def hex_956538 : String := "414342050605434244400541050A05444006410707064205440A05"
theorem cover_956538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956538 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_956538)
  decide +kernel
#print axioms cover_956538

def state_956566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
def hex_956566 : String := "43420544404106430642050641434205060543424408054408064205080542054440050505"
theorem cover_956566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_956566)
  decide +kernel
#print axioms cover_956566

def state_956605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 27)))
def hex_956605 : String := "444041054342050805414342054408050543424408054408400841050842050805"
theorem cover_956605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_956605)
  decide +kernel
#print axioms cover_956605
end Mub6.Numerical.CircleFullD0.Forest
