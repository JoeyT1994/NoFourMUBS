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
def state_1558630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 43 else 21)))
def hex_1558630 : String := "44424140070A0741400A0A40070642414043440A420A0A0A43440A0A0A404344074207410A0707434406420A0A0A4140434409050A0A40430944070A43060A"
theorem cover_1558630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1558630)
  decide +kernel
#print axioms cover_1558630

def state_1558693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
def hex_1558693 : String := "434406424140440643054206050606064442410A060642410A4043060A06410A06"
theorem cover_1558693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1558693)
  decide +kernel
#print axioms cover_1558693

def state_1558726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
def hex_1558726 : String := "4043440642060644074241400743060705414007060606"
theorem cover_1558726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558726 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1558726)
  decide +kernel
#print axioms cover_1558726

def state_1558755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
def hex_1558755 : String := "4006440505"
theorem cover_1558755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558755 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1558755)
  decide +kernel
#print axioms cover_1558755

def state_1558761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
def hex_1558761 : String := "4442060808"
theorem cover_1558761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1558761)
  decide +kernel
#print axioms cover_1558761

def state_1558766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
def hex_1558766 : String := "444241430506434044424308060808444243054105404408060705074006444206410643400605060641054305400844424105430505050542410643070607"
theorem cover_1558766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1558766)
  decide +kernel
#print axioms cover_1558766

def state_1558829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
def hex_1558829 : String := "4106400644420643410640064408060606"
theorem cover_1558829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1558829)
  decide +kernel
#print axioms cover_1558829

def state_1558846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 22)))
def hex_1558846 : String := "434105404408050541054008444341054208050808"
theorem cover_1558846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1558846)
  decide +kernel
#print axioms cover_1558846

def state_1558867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 23)))
def hex_1558867 : String := "42430806430708"
theorem cover_1558867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1558867)
  decide +kernel
#print axioms cover_1558867
end Mub6.Numerical.CircleFullD0.Forest
