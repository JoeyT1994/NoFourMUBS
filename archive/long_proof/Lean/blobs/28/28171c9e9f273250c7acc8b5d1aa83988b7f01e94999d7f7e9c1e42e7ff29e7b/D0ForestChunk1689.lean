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
def state_2278516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 63)))
def hex_2278516 : String := "4442400743074144420A400A0AE50740430641444207060707430641444240430541050643050505E544420A06E5E5"
theorem cover_2278516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_2278516)
  decide +kernel
#print axioms cover_2278516

def state_2278563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
def hex_2278563 : String := "444240070A4043074144080707430A41440A420A4008080842074007430741444240070A400743074144084207400708080707"
theorem cover_2278563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278563 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 51) (hex := hex_2278563)
  decide +kernel
#print axioms cover_2278563

def state_2278614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
def hex_2278614 : String := "444240070A4043070843080842074007430741444207080707"
theorem cover_2278614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278614 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2278614)
  decide +kernel
#print axioms cover_2278614

def state_2278646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
def hex_2278646 : String := "42430A41440A060A4341440A400A0A0A414440420A080A404206430A064206430A0644080A"
theorem cover_2278646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278646 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2278646)
  decide +kernel
#print axioms cover_2278646

def state_2278684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 29)))
def hex_2278684 : String := "4341440A4006060A06"
theorem cover_2278684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2278684)
  decide +kernel
#print axioms cover_2278684

def state_2278693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 29)))
def hex_2278693 : String := "43414440420A430A0A420A0A404207430741060642430A06430A4144060606440A40070A41444042064341060606420643410606064006064440060606"
theorem cover_2278693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2278693)
  decide +kernel
#print axioms cover_2278693

def state_2278754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
def hex_2278754 : String := "440A420A430A4144060505"
theorem cover_2278754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278754 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2278754)
  decide +kernel
#print axioms cover_2278754
end Mub6.Numerical.CircleFullD0.Forest
