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
def state_970379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 57)))
def hex_970379 : String := "40414209444307050742440A09440A074142440608440608420644064340070606"
theorem cover_970379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_970379)
  decide +kernel
#print axioms cover_970379

def state_970412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 28)))
def hex_970412 : String := "444340074142440943094007060909404142440A0707420A07414206440643070642064406064307400741424443400706060807424443400706060707"
theorem cover_970412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970412 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_970412)
  decide +kernel
#print axioms cover_970412

def state_970475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 56)))
def hex_970475 : String := "4341400A4206090A06"
theorem cover_970475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970475 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_970475)
  decide +kernel
#print axioms cover_970475

def state_970485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 57)))
def hex_970485 : String := "414042440A070742444305064341084042050505414042080706400A0644430541400706060740420A0742440A43050A440907"
theorem cover_970485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_970485)
  decide +kernel
#print axioms cover_970485

def state_970536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 57)))
def hex_970536 : String := "4140420A074206440606400A06"
theorem cover_970536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_970536)
  decide +kernel
#print axioms cover_970536

def state_970549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 28)))
def hex_970549 : String := "44430941400A060A4307414007424406070740074244060707"
theorem cover_970549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970549 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_970549)
  decide +kernel
#print axioms cover_970549
end Mub6.Numerical.CircleFullD0.Forest
