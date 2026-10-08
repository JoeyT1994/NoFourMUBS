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
def state_1593917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 101 else (if j.val < 4 then 58 else 50)))
def hex_1593917 : String := "444041434409420A090A43440A0A0A414344420609420540090944420A090A43440605440A0A404143420A440A0A0A434205440A050A4143054205440A0505"
theorem cover_1593917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 63) (hex := hex_1593917)
  decide +kernel
#print axioms cover_1593917

def state_1593980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 50)))
def hex_1593980 : String := "420A44400A0A400A0A"
theorem cover_1593980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1593980)
  decide +kernel
#print axioms cover_1593980

def state_1593990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 50)))
def hex_1593990 : String := "43424407054440410743074407070740410805054244400A0505444041094344070A0A074041080A05"
theorem cover_1593990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1593990)
  decide +kernel
#print axioms cover_1593990

def state_1594031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 50)))
def hex_1594031 : String := "43420544404143064406050605054244400A050544404143440A0A0A43440A050A410705400505"
theorem cover_1594031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1594031)
  decide +kernel
#print axioms cover_1594031

def state_1594070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 51)))
def hex_1594070 : String := "4041434244400A050544404143420A0606434205440A0506410805400605420A4440060A0643420544404143050A0505054205440A0505"
theorem cover_1594070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1594070)
  decide +kernel
#print axioms cover_1594070

def state_1594128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
def hex_1594128 : String := "43440942404109094108430808094409424006410643090606"
theorem cover_1594128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594128 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1594128)
  decide +kernel
#print axioms cover_1594128
end Mub6.Numerical.CircleFullD0.Forest
