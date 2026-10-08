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
def state_2605426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2605426 : String := "41424344060A06064243440741420A430A0A42430744070A074406414244064006070642440740070707434406410A434440060A40070A44060606"
theorem cover_2605426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605426 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2605426)
  decide +kernel
#print axioms cover_2605426

def state_2605486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2605486 : String := "41424344404243090A09420A43090609440A40060843090642434440410905410A4205430505090A4344090909"
theorem cover_2605486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605486 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2605486)
  decide +kernel
#print axioms cover_2605486

def state_2605531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2605531 : String := "414243440A08440A084344434440090A0844060908440640060842430A440A0A434441430909434440090A090A090A"
theorem cover_2605531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605531 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2605531)
  decide +kernel
#print axioms cover_2605531

def state_2605584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2605584 : String := "43440940414407420706440642070607440940414306090609"
theorem cover_2605584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2605584)
  decide +kernel
#print axioms cover_2605584

def state_2605609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_2605609 : String := "434440414206430606064142064306060640414206440705064107420606444041420943070508094041054206054142090509"
theorem cover_2605609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 51) (hex := hex_2605609)
  decide +kernel
#print axioms cover_2605609

def state_2605660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2605660 : String := "42094306440906"
theorem cover_2605660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2605660)
  decide +kernel
#print axioms cover_2605660

def state_2605667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2605667 : String := "4142094344090744070709"
theorem cover_2605667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605667 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2605667)
  decide +kernel
#print axioms cover_2605667
end Mub6.Numerical.CircleFullD0.Forest
