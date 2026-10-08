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
def state_1534714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 105) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 33)))
def hex_1534714 : String := "424344064005054440424143060A06060640424143444042050506050A43060A410A06424143060A0606430606"
theorem cover_1534714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534714 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_1534714)
  decide +kernel
#print axioms cover_1534714

def state_1534759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 16)))
def hex_1534759 : String := "440A400A410A0A"
theorem cover_1534759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1534759)
  decide +kernel
#print axioms cover_1534759

def state_1534766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 16)))
def hex_1534766 : String := "43440640094107060A"
theorem cover_1534766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1534766)
  decide +kernel
#print axioms cover_1534766

def state_1534775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 16)))
def hex_1534775 : String := "424344064009424143060606064440050640424143440540074207070507410A0742414344064042410A060A0605430605410A0643064406400906"
theorem cover_1534775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1534775)
  decide +kernel
#print axioms cover_1534775

def state_1534834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 16)))
def hex_1534834 : String := "414243440640410706064440410A060640410A0A410942090643060A424306440640424143060606060606"
theorem cover_1534834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1534834)
  decide +kernel
#print axioms cover_1534834

def state_1534881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 17)))
def hex_1534881 : String := "44404105424305444042410509054241054305440A05050505410542430544404241054305440A050542410543050A05050505"
theorem cover_1534881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1534881)
  decide +kernel
#print axioms cover_1534881

def state_1534932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 17)))
def hex_1534932 : String := "44404108420A08410A420A0A4008410A4243050A0A"
theorem cover_1534932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534932 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1534932)
  decide +kernel
#print axioms cover_1534932

def state_1534953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 17)))
def hex_1534953 : String := "43050A"
theorem cover_1534953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1534953)
  decide +kernel
#print axioms cover_1534953
end Mub6.Numerical.CircleFullD0.Forest
