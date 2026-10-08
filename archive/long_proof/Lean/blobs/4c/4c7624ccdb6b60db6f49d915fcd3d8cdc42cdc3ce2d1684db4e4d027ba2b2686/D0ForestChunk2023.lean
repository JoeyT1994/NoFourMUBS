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
def state_2566026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_2566026 : String := "4043050543424407414005430505054441400743420744414007080741400508054207440741050507414005430505054207444140054307070505"
theorem cover_2566026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_2566026)
  decide +kernel
#print axioms cover_2566026

def state_2566085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_2566085 : String := "4144064006424341440640064243E20606440740054207070606440740054207430707"
theorem cover_2566085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566085 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_2566085)
  decide +kernel
#print axioms cover_2566085

def state_2566120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_2566120 : String := "4407400742074344074140054307050507"
theorem cover_2566120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2566120)
  decide +kernel
#print axioms cover_2566120

def state_2566137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 11)))
def hex_2566137 : String := "414407400642070807"
theorem cover_2566137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2566137)
  decide +kernel
#print axioms cover_2566137

def state_2566149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 22)))
def hex_2566149 : String := "4006434241064406400643420706060606"
theorem cover_2566149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2566149)
  decide +kernel
#print axioms cover_2566149

def state_2566167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 23)))
def hex_2566167 : String := "06"
theorem cover_2566167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2566167)
  decide +kernel
#print axioms cover_2566167

def state_2566171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 23)))
def hex_2566171 : String := "44400643424106440640064342410644064006080606060640064342414406094440064309064009090906"
theorem cover_2566171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 43) (hex := hex_2566171)
  decide +kernel
#print axioms cover_2566171

def state_2566216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
def hex_2566216 : String := "4342070606"
theorem cover_2566216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2566216)
  decide +kernel
#print axioms cover_2566216

def state_2566222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 56 else 46)))
def hex_2566222 : String := "42414440064342070606404307064342414407400708074106440740064308064207060741440606444006430706400643424407414006090744060906"
theorem cover_2566222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2566222)
  decide +kernel
#print axioms cover_2566222

def state_2566283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 57 else 46)))
def hex_2566283 : String := "4241060706"
theorem cover_2566283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2566283)
  decide +kernel
#print axioms cover_2566283
end Mub6.Numerical.CircleFullD0.Forest
