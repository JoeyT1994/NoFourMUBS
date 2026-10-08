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
def state_2297740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
def hex_2297740 : String := "434244414043420544410A050505C44005C441400543050505444140430A0AC44005C4414005434244C40544C405050542444105050544414005C40505"
theorem cover_2297740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297740 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2297740)
  decide +kernel
#print axioms cover_2297740

def state_2297801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
def hex_2297801 : String := "43420544400541C4050505"
theorem cover_2297801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297801 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2297801)
  decide +kernel
#print axioms cover_2297801

def state_2297814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 108 else 92)))
def hex_2297814 : String := "4244C4404143064244C40544C405060644C4404143074244C4410705074306420544C405410706"
theorem cover_2297814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2297814)
  decide +kernel
#print axioms cover_2297814

def state_2297853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 109 else 92)))
def hex_2297853 : String := "4244C4400541434244C40544C409420544C40543050544C44041424344C405054344C4050505414243070907424344C405054344C40505"
theorem cover_2297853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2297853)
  decide +kernel
#print axioms cover_2297853

def state_2297908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 92)))
def hex_2297908 : String := "434206444041C40606064244400541C4050544400541C4420543060505"
theorem cover_2297908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2297908)
  decide +kernel
#print axioms cover_2297908

def state_2297937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 93)))
def hex_2297937 : String := "40410505414342444041050506054440410705410706400506420544400541070505430505"
theorem cover_2297937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2297937)
  decide +kernel
#print axioms cover_2297937
end Mub6.Numerical.CircleFullD0.Forest
