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
def state_966546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 39 else 27)))
def hex_966546 : String := "4244064005064440414342060806060640414342054440410508410543090505054342440605440A074205440605414342064406050506"
theorem cover_966546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966546 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_966546)
  decide +kernel
#print axioms cover_966546

def state_966601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
def hex_966601 : String := "43424406404143440A42400706074406060A064409404143074244060707070942064406400A06"
theorem cover_966601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_966601)
  decide +kernel
#print axioms cover_966601

def state_966640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
def hex_966640 : String := "414342064406404143094206090906064342060906"
theorem cover_966640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966640 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_966640)
  decide +kernel
#print axioms cover_966640

def state_966661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_966661 : String := "42440643404142434406400A060643094406400A06420A09060644094309404143420A09060A06"
theorem cover_966661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966661 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_966661)
  decide +kernel
#print axioms cover_966661

def state_966702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_966702 : String := "424344420906050543064440410505410542050705"
theorem cover_966702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_966702)
  decide +kernel
#print axioms cover_966702

def state_966723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_966723 : String := "424344414206064240064406064006440706064441094209400543440A07050943074441400742430705070707"
theorem cover_966723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966723 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_966723)
  decide +kernel
#print axioms cover_966723
end Mub6.Numerical.CircleFullD0.Forest
