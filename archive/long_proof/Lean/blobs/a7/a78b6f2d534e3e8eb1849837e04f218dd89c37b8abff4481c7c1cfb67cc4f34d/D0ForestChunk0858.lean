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
def state_1506605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
def hex_1506605 : String := "4041054305424440054105050505410543054244404105430506060505"
theorem cover_1506605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1506605)
  decide +kernel
#print axioms cover_1506605

def state_1506639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 60)))
def hex_1506639 : String := "444041430A4244070807434244070A074244400707080741430707430707400A410643420607420607"
theorem cover_1506639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1506639)
  decide +kernel
#print axioms cover_1506639

def state_1506680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 84 else (if j.val < 4 then 107 else 60)))
def hex_1506680 : String := "44404142080742084307074142060742434405060507400806"
theorem cover_1506680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1506680)
  decide +kernel
#print axioms cover_1506680

def state_1506705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 60)))
def hex_1506705 : String := "4344070A4407400A07"
theorem cover_1506705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1506705)
  decide +kernel
#print axioms cover_1506705

def state_1506717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 120)))
def hex_1506717 : String := "4041434244400707404107090707424405400841070707434244094009410707074209074143074244050707434244050707420507"
theorem cover_1506717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506717 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1506717)
  decide +kernel
#print axioms cover_1506717

def state_1506772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
def hex_1506772 : String := "434244400A41074307070A0A42080A"
theorem cover_1506772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1506772)
  decide +kernel
#print axioms cover_1506772

def state_1506787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
def hex_1506787 : String := "434244404109094143070743070940410843090841430A08434244400707080742080744070A42444008410843090808444007074009410707"
theorem cover_1506787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506787 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1506787)
  decide +kernel
#print axioms cover_1506787
end Mub6.Numerical.CircleFullD0.Forest
