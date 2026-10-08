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
def state_1666551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
def hex_1666551 : String := "42434144400808080941440A080A43410744090741440540054243070505444005420A0540420A05424341070A0A430705"
theorem cover_1666551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666551 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1666551)
  decide +kernel
#print axioms cover_1666551

def state_1666601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 15)))
def hex_1666601 : String := "434144060844094205430540080541444208404341064406080A060844420A400A430907420840430808430808"
theorem cover_1666601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1666601)
  decide +kernel
#print axioms cover_1666601

def state_1666647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
def hex_1666647 : String := "4144430940424106090706430740074208074409430940420907420909"
theorem cover_1666647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666647 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1666647)
  decide +kernel
#print axioms cover_1666647

def state_1666678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 30)))
def hex_1666678 : String := "4042434106440640420805060505420606"
theorem cover_1666678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1666678)
  decide +kernel
#print axioms cover_1666678

def state_1666695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
def hex_1666695 : String := "4042430841080843070542434106084106440608434106440643074007064144054005064440050640420805420606"
theorem cover_1666695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666695 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1666695)
  decide +kernel
#print axioms cover_1666695

def state_1666743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 30)))
def hex_1666743 : String := "404243090A43440909054243440609440641064207400A0643440641060944410540050641400506404243090505420606"
theorem cover_1666743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666743 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1666743)
  decide +kernel
#print axioms cover_1666743
end Mub6.Numerical.CircleFullD0.Forest
