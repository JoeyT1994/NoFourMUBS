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
def state_1622611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 66)))
def hex_1622611 : String := "404443410A0A0A0A444341424008080842400A444341080A080A400A44434108420A070843414208070A0A4108420A0A4341420A400944080A420A0A41080A"
theorem cover_1622611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1622611)
  decide +kernel
#print axioms cover_1622611

def state_1622674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 66)))
def hex_1622674 : String := "42400A4443410A0A0A0A400A444341420A400A444341420A070A0A0A420A0A410A0A430A0A"
theorem cover_1622674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622674 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_1622674)
  decide +kernel
#print axioms cover_1622674

def state_1622711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 67)))
def hex_1622711 : String := "434142090942090941420A40094443410A0A0A0A0A"
theorem cover_1622711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622711 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1622711)
  decide +kernel
#print axioms cover_1622711

def state_1622734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 66)))
def hex_1622734 : String := "4142064044434106054142064044070605420540440705054305410605054205404443054105050505"
theorem cover_1622734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1622734)
  decide +kernel
#print axioms cover_1622734

def state_1622777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 208 else (if j.val < 4 then 193 else 66)))
def hex_1622777 : String := "40444306410642064007060606"
theorem cover_1622777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1622777)
  decide +kernel
#print axioms cover_1622777

def state_1622792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 132)))
def hex_1622792 : String := "43414206400808424044434106050843054106050540444341084205070843414205050541084205084443050805410842400808400808"
theorem cover_1622792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1622792)
  decide +kernel
#print axioms cover_1622792
end Mub6.Numerical.CircleFullD0.Forest
