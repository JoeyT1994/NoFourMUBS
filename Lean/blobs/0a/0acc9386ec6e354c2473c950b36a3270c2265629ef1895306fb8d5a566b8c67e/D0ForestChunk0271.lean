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
def state_1002498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
def hex_1002498 : String := "404443050A43070A44434241400544054305424105050505054241400A4443050A430A0A050543424107400544050A41050542410A0A410705"
theorem cover_1002498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002498 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1002498)
  decide +kernel
#print axioms cover_1002498

def state_1002555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
def hex_1002555 : String := "4342410740074443410742400744430741070A07074107420A400744430707070707424107400A4443410A0A0A0A41074007444307420A0707"
theorem cover_1002555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 57) (hex := hex_1002555)
  decide +kernel
#print axioms cover_1002555

def state_1002612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 22)))
def hex_1002612 : String := "400744434241060505424107050507"
theorem cover_1002612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002612 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1002612)
  decide +kernel
#print axioms cover_1002612

def state_1002629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
def hex_1002629 : String := "0A"
theorem cover_1002629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002629 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1002629)
  decide +kernel
#print axioms cover_1002629

def state_1002631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
def hex_1002631 : String := "424143400A08050A41434044420A07074442410843400A44080808410743400744420907070A420807400A0843400A44420A4143400A440A0A0A0A0A0A"
theorem cover_1002631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002631 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1002631)
  decide +kernel
#print axioms cover_1002631

def state_1002692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
def hex_1002692 : String := "4241080A414307070A"
theorem cover_1002692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002692 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1002692)
  decide +kernel
#print axioms cover_1002692

def state_1002702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
def hex_1002702 : String := "444241070A0707"
theorem cover_1002702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1002702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1002702)
  decide +kernel
#print axioms cover_1002702
end Mub6.Numerical.CircleFullD0.Forest
