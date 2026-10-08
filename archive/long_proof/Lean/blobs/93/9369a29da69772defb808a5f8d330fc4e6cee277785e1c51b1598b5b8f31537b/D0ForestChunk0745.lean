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
def state_1479694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 58)))
def hex_1479694 : String := "42404341440A4209404341080809090A0A0A4043410808414408420A40430808080A430808"
theorem cover_1479694 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479694 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1479694)
  decide +kernel
#print axioms cover_1479694

def state_1479732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 46 else 59)))
def hex_1479732 : String := "404341440906440A0641090A06"
theorem cover_1479732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1479732)
  decide +kernel
#print axioms cover_1479732

def state_1479747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 92 else 59)))
def hex_1479747 : String := "4144424043410908410944080909084240060640050944424043080A0808424043050506400508"
theorem cover_1479747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1479747)
  decide +kernel
#print axioms cover_1479747

def state_1479786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 93 else 59)))
def hex_1479786 : String := "4144424043410944090607094043410908410944084207080942064043054109050644420A4043080A084206404305410505430606"
theorem cover_1479786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479786 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1479786)
  decide +kernel
#print axioms cover_1479786

def state_1479839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 59)))
def hex_1479839 : String := "434109084109440806"
theorem cover_1479839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1479839)
  decide +kernel
#print axioms cover_1479839

def state_1479848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
def hex_1479848 : String := "440A420A40434144084240050605080A43080A"
theorem cover_1479848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1479848)
  decide +kernel
#print axioms cover_1479848

def state_1479867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 29)))
def hex_1479867 : String := "41440A420A4340414442074340070907420643400706070A41090A40070A0A"
theorem cover_1479867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1479867)
  decide +kernel
#print axioms cover_1479867

def state_1479898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
def hex_1479898 : String := "4344420A0842404143440909090941434408060A0A40094143084408420A0808440A420A40090A"
theorem cover_1479898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1479898)
  decide +kernel
#print axioms cover_1479898
end Mub6.Numerical.CircleFullD0.Forest
