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
def state_2333575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 58) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 63)))
def hex_2333575 : String := "42404341444240080808E508414442430807084243E540410606074308070843414442400807084240E54309074008070841070840430808430807"
theorem cover_2333575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2333575)
  decide +kernel
#print axioms cover_2333575

def state_2333634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 59) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
def hex_2333634 : String := "08"
theorem cover_2333634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2333634)
  decide +kernel
#print axioms cover_2333634

def state_2333635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 45 else 31)))
def hex_2333635 : String := "41440742434041070807070708"
theorem cover_2333635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2333635)
  decide +kernel
#print axioms cover_2333635

def state_2333648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 31)))
def hex_2333648 : String := "4341440742404341070807070708410708"
theorem cover_2333648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333648 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2333648)
  decide +kernel
#print axioms cover_2333648

def state_2333665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 31)))
def hex_2333665 : String := "40430808430807"
theorem cover_2333665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2333665)
  decide +kernel
#print axioms cover_2333665

def state_2333672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
def hex_2333672 : String := "41074407424340410708070607"
theorem cover_2333672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333672 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2333672)
  decide +kernel
#print axioms cover_2333672

def state_2333685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 15)))
def hex_2333685 : String := "43414405070807"
theorem cover_2333685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2333685)
  decide +kernel
#print axioms cover_2333685

def state_2333692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 15)))
def hex_2333692 : String := "4243410744074042434107080707070707"
theorem cover_2333692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333692 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2333692)
  decide +kernel
#print axioms cover_2333692

def state_2333709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
def hex_2333709 : String := "440840424308080808"
theorem cover_2333709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2333709)
  decide +kernel
#print axioms cover_2333709

def state_2333718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
def hex_2333718 : String := "434144050606414405404305070508"
theorem cover_2333718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333718 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2333718)
  decide +kernel
#print axioms cover_2333718

def state_2333733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_2333733 : String := "4344050644054009430505"
theorem cover_2333733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2333733)
  decide +kernel
#print axioms cover_2333733

def state_2333746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2333746 : String := "4142430A4409080909"
theorem cover_2333746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333746 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2333746)
  decide +kernel
#print axioms cover_2333746

def state_2333756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2333756 : String := "42434440054105054041050905444041420A05094105424309440A0A0940410A420A0841424405050542444305400A054307074405054305440505"
theorem cover_2333756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333756 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2333756)
  decide +kernel
#print axioms cover_2333756
end Mub6.Numerical.CircleFullD0.Forest
