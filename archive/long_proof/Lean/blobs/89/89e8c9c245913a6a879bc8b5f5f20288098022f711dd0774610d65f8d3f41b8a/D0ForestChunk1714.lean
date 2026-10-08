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
def state_2284540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 62)))
def hex_2284540 : String := "44424340414407420607080707434008070742434041060641060606434041440742434006060607440842430806084107440742430806074041060607"
theorem cover_2284540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284540 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2284540)
  decide +kernel
#print axioms cover_2284540

def state_2284602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 63)))
def hex_2284602 : String := "4340414442084340070840060608074144420843400808400606084442434006060643400741440942064307060A4006064206430706400606"
theorem cover_2284602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284602 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_2284602)
  decide +kernel
#print axioms cover_2284602

def state_2284663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 126)))
def hex_2284663 : String := "4243404109074144420843080808444207430740074109070740410909414442064308060844420643400941090906E54340094109094009410909"
theorem cover_2284663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2284663)
  decide +kernel
#print axioms cover_2284663

def state_2284722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 127)))
def hex_2284722 : String := "4243400708400808430909"
theorem cover_2284722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2284722)
  decide +kernel
#print axioms cover_2284722

def state_2284733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 63)))
def hex_2284733 : String := "44424307400741444206430906E50743400741090709420709"
theorem cover_2284733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_2284733)
  decide +kernel
#print axioms cover_2284733

def state_2284764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 228) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 126)))
def hex_2284764 : String := "44420843050808"
theorem cover_2284764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284764 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2284764)
  decide +kernel
#print axioms cover_2284764
end Mub6.Numerical.CircleFullD0.Forest
