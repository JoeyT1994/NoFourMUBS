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
def state_1587967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 25)))
def hex_1587967 : String := "44414043060A064043060A0641404342054440414305050505054205440A05054043050505"
theorem cover_1587967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587967 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1587967)
  decide +kernel
#print axioms cover_1587967

def state_1588007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1588007 : String := "4342440640414306424406400906090606440940410909410906424440094306094043410A0A0A4341420A09060A440940430909430909"
theorem cover_1588007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1588007)
  decide +kernel
#print axioms cover_1588007

def state_1588062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1588062 : String := "4306424406430641400A05064409434108064108400906"
theorem cover_1588062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588062 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1588062)
  decide +kernel
#print axioms cover_1588062

def state_1588087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 50)))
def hex_1588087 : String := "4206440641404306090606"
theorem cover_1588087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1588087)
  decide +kernel
#print axioms cover_1588087

def state_1588098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 55 else 50)))
def hex_1588098 : String := "424441400A060641400A43060A400A06444109400906414043090943420609420A094043424406410906094208094306420A4409410909"
theorem cover_1588098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1588098)
  decide +kernel
#print axioms cover_1588098

def state_1588153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1588153 : String := "430642064406414306404206090606"
theorem cover_1588153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1588153)
  decide +kernel
#print axioms cover_1588153
end Mub6.Numerical.CircleFullD0.Forest
