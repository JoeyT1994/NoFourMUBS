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
def state_2292670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 32 else (if j.val < 4 then 55 else 46)))
def hex_2292670 : String := "444140064308064043424406410605060643424441084007084108404307050844410640060809424406410640050906410940430505430909"
theorem cover_2292670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2292670)
  decide +kernel
#print axioms cover_2292670

def state_2292727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 46)))
def hex_2292727 : String := "44410640064309064109400909"
theorem cover_2292727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2292727)
  decide +kernel
#print axioms cover_2292727

def state_2292741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
def hex_2292741 : String := "434244070544414005434244070544410A0705420506050505"
theorem cover_2292741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_2292741)
  decide +kernel
#print axioms cover_2292741

def state_2292768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 54 else 46)))
def hex_2292768 : String := "444140430842074407410505084007430607414043050543064208440805400506"
theorem cover_2292768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292768 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2292768)
  decide +kernel
#print axioms cover_2292768

def state_2292803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 102) else (if j.val < 3 then 33 else (if j.val < 4 then 54 else 92)))
def hex_2292803 : String := "404308424441400608074140050805444140060840074308420706414005090543084208440841084043080908"
theorem cover_2292803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2292803)
  decide +kernel
#print axioms cover_2292803

def state_2292848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 103) else (if j.val < 3 then 33 else (if j.val < 4 then 54 else 92)))
def hex_2292848 : String := "404342074441400708074140050805420544070543084244414007080741400508054441404308070840074306074140430505084005430605"
theorem cover_2292848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2292848)
  decide +kernel
#print axioms cover_2292848
end Mub6.Numerical.CircleFullD0.Forest
