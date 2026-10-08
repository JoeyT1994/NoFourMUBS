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
def state_1613545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 25)))
def hex_1613545 : String := "444241434044080808404442410809084241060906080941084340440808084044424106090606084241430808094108430808"
theorem cover_1613545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613545 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1613545)
  decide +kernel
#print axioms cover_1613545

def state_1613596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
def hex_1613596 : String := "434044080808400608"
theorem cover_1613596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613596 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1613596)
  decide +kernel
#print axioms cover_1613596

def state_1613611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 50)))
def hex_1613611 : String := "4344404209414344404209410A0909090909090909"
theorem cover_1613611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1613611)
  decide +kernel
#print axioms cover_1613611

def state_1613634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 100)))
def hex_1613634 : String := "40414243440A400A08444042410A090A0A4042090A4209080A4209430A440A0A410A42090A"
theorem cover_1613634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1613634)
  decide +kernel
#print axioms cover_1613634

def state_1613671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 101)))
def hex_1613671 : String := "4041424344400A08404205080544404209060909084209430A440A09410809"
theorem cover_1613671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613671 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1613671)
  decide +kernel
#print axioms cover_1613671

def state_1613702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 61 else 50)))
def hex_1613702 : String := "4440414243444042090642090A4006094440060906064209434440060A06064142090A094041420906094142090809"
theorem cover_1613702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1613702)
  decide +kernel
#print axioms cover_1613702

def state_1613749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
def hex_1613749 : String := "420943444041420943440A090909090909"
theorem cover_1613749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613749 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1613749)
  decide +kernel
#print axioms cover_1613749

def state_1613766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 51)))
def hex_1613766 : String := "41420543404441420508090544410805054044410606060909"
theorem cover_1613766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1613766)
  decide +kernel
#print axioms cover_1613766
end Mub6.Numerical.CircleFullD0.Forest
