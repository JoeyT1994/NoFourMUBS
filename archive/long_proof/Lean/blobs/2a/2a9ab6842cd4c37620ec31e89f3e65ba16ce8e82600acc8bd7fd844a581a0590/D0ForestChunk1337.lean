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
def state_1621611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 65)))
def hex_1621611 : String := "4044D34341070641424006440609060644D343414240070507424007050741424044D3434107070A44D343054142050705400707424044060644D30506"
theorem cover_1621611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1621611)
  decide +kernel
#print axioms cover_1621611

def state_1621674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 208 else (if j.val < 4 then 193 else 65)))
def hex_1621674 : String := "4044D34341080A0A44D343410842400A44D3064044080A44084341080A084108420708"
theorem cover_1621674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621674 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1621674)
  decide +kernel
#print axioms cover_1621674

def state_1621709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 65)))
def hex_1621709 : String := "4044D3434108420A060844D3434108424044080A4408434108420A080840440643410706064408434107070808"
theorem cover_1621709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_1621709)
  decide +kernel
#print axioms cover_1621709

def state_1621755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 208 else (if j.val < 4 then 193 else 65)))
def hex_1621755 : String := "4044D30A44D34341420A400A44D30A420A0A410A0A"
theorem cover_1621755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621755 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1621755)
  decide +kernel
#print axioms cover_1621755

def state_1621776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 193 else 65)))
def hex_1621776 : String := "400644D3434142400A44D34341420A0A0A0A4006440643414240060706060642400644060A0641420A0606"
theorem cover_1621776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621776 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_1621776)
  decide +kernel
#print axioms cover_1621776

def state_1621820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 64)))
def hex_1621820 : String := "D3"
theorem cover_1621820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621820 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1621820)
  decide +kernel
#print axioms cover_1621820

def state_1621823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 65)))
def hex_1621823 : String := "424044D306064044D34341420607420505414206400707424044D343054105050540070744D34305410605"
theorem cover_1621823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1621823)
  decide +kernel
#print axioms cover_1621823
end Mub6.Numerical.CircleFullD0.Forest
