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
def state_2327578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 42)))
def hex_2327578 : String := "4143404205050540424406060A4205054340420909084042070A420808"
theorem cover_2327578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 29) (hex := hex_2327578)
  decide +kernel
#print axioms cover_2327578

def state_2327608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 43)))
def hex_2327608 : String := "434042440541050A0A05404206064244054105430506440505"
theorem cover_2327608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327608 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2327608)
  decide +kernel
#print axioms cover_2327608

def state_2327634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 62 else 43)))
def hex_2327634 : String := "40424409410A090A4244410508414305404244050505054309400942440541050909440A410509"
theorem cover_2327634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_2327634)
  decide +kernel
#print axioms cover_2327634

def state_2327674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 43)))
def hex_2327674 : String := "424441430A060741430A06430940094207090A"
theorem cover_2327674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327674 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2327674)
  decide +kernel
#print axioms cover_2327674

def state_2327695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 86)))
def hex_2327695 : String := "4143404208050540424406064405060843400908400708"
theorem cover_2327695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327695 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2327695)
  decide +kernel
#print axioms cover_2327695

def state_2327718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 87)))
def hex_2327718 : String := "414340424441054305834105430A830A42050583434042440941430983090942440841430583430983440841050983"
theorem cover_2327718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327718 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2327718)
  decide +kernel
#print axioms cover_2327718

def state_2327765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 63 else 43)))
def hex_2327765 : String := "44414305400A05430940090841430A400A420505430A400A42830A"
theorem cover_2327765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_2327765)
  decide +kernel
#print axioms cover_2327765

def state_2327792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 31 else 21)))
def hex_2327792 : String := "44410A0A410A0A"
theorem cover_2327792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2327792)
  decide +kernel
#print axioms cover_2327792
end Mub6.Numerical.CircleFullD0.Forest
