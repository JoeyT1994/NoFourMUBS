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
def state_1002285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 88)))
def hex_1002285 : String := "4140070840440A0A444342084108400A440A080843420841070A08"
theorem cover_1002285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002285 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1002285)
  decide +kernel
#print axioms cover_1002285

def state_1002312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 88)))
def hex_1002312 : String := "4107404443070A074443424107400A444342410705050A43070A410740054405064241080A4107400A4443420A050A4307074307420807"
theorem cover_1002312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1002312)
  decide +kernel
#print axioms cover_1002312

def state_1002367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 88)))
def hex_1002367 : String := "42084108400A4443420841070A0808"
theorem cover_1002367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1002367)
  decide +kernel
#print axioms cover_1002367

def state_1002382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 89)))
def hex_1002382 : String := "434241054007080742084107400708"
theorem cover_1002382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002382 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1002382)
  decide +kernel
#print axioms cover_1002382

def state_1002397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
def hex_1002397 : String := "400A44434142400A440A0A400A44434241400A440A0A05050A43420A414007440507050A4206400A44050A0A4341420A400A4443420A070A4307070A0A"
theorem cover_1002397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002397 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1002397)
  decide +kernel
#print axioms cover_1002397

def state_1002459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
def hex_1002459 : String := "400744434241074007444307070707424107400744434241074007440907074241070A09070707"
theorem cover_1002459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 39) (hex := hex_1002459)
  decide +kernel
#print axioms cover_1002459
end Mub6.Numerical.CircleFullD0.Forest
