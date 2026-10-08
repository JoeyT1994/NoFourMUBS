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
def state_986374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 85)))
def hex_986374 : String := "44414240090A09424043084405410905430A440A0A0541424009090942404344084107084441090809430A440A41090A40080A"
theorem cover_986374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986374 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_986374)
  decide +kernel
#print axioms cover_986374

def state_986426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 170)))
def hex_986426 : String := "414240090909424043440606064344410A054109420605440641090640054305440509"
theorem cover_986426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986426 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_986426)
  decide +kernel
#print axioms cover_986426

def state_986461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 171)))
def hex_986461 : String := "4109424043440909440609434441094240060A0A41094240060A0944410942060941094206094043090943440909440909"
theorem cover_986461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986461 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_986461)
  decide +kernel
#print axioms cover_986461

def state_986510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 85)))
def hex_986510 : String := "43440A410A0A44410A4240430A07070A414240090A0A4240430A44410A0741090A0A0A"
theorem cover_986510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986510 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_986510)
  decide +kernel
#print axioms cover_986510

def state_986545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 85)))
def hex_986545 : String := "4043440541070544410505410942400543050905430A440A0A"
theorem cover_986545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986545 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_986545)
  decide +kernel
#print axioms cover_986545

def state_986573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 43)))
def hex_986573 : String := "44410742404307064344410542054006430705054441050605400743074441074240064307440605070707"
theorem cover_986573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_986573)
  decide +kernel
#print axioms cover_986573
end Mub6.Numerical.CircleFullD0.Forest
