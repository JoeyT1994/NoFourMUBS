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
def state_2604470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_2604470 : String := "4244404341064208060643090540430A444106060A43444109090A4405410542050A4440060740430A0643420A0A42440641060A06"
theorem cover_2604470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604470 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2604470)
  decide +kernel
#print axioms cover_2604470

def state_2604523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_2604523 : String := "4244404308080840430A410A0A430941440842090A084407400A430A414244060A0708"
theorem cover_2604523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604523 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2604523)
  decide +kernel
#print axioms cover_2604523

def state_2604564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_2604564 : String := "4344414240094306440A060A0A06444142400744430A0707400A0A42070A410907"
theorem cover_2604564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604564 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2604564)
  decide +kernel
#print axioms cover_2604564

def state_2604597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_2604597 : String := "43444142430644400A08060842430A0A0A41064206064441424440430A050505440A40080842440A4007070A4142050842074043070708"
theorem cover_2604597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2604597)
  decide +kernel
#print axioms cover_2604597

def state_2604652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_2604652 : String := "4043410906074306410507"
theorem cover_2604652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604652 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2604652)
  decide +kernel
#print axioms cover_2604652

def state_2604663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_2604663 : String := "444044414243400705050A0A074441420543440A05054243440A05050A41050707"
theorem cover_2604663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2604663)
  decide +kernel
#print axioms cover_2604663
end Mub6.Numerical.CircleFullD0.Forest
