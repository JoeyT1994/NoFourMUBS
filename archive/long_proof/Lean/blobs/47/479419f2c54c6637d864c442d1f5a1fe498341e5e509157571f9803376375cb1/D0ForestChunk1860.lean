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
def state_2319403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 43)))
def hex_2319403 : String := "40424406064406064244410543400705074106434044060644050540064406064441054305400605410543404206050583"
theorem cover_2319403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319403 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2319403)
  decide +kernel
#print axioms cover_2319403

def state_2319455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 43)))
def hex_2319455 : String := "4407414340440742070944420709424143400705070741430540090509400744074207414340064405420505060707"
theorem cover_2319455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_2319455)
  decide +kernel
#print axioms cover_2319455

def state_2319502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 43)))
def hex_2319502 : String := "44414309400742070907414340094244090909404244070609424441430506074143400605064309094409410A09430909"
theorem cover_2319502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2319502)
  decide +kernel
#print axioms cover_2319502

def state_2319553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 86)))
def hex_2319553 : String := "4143080707"
theorem cover_2319553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319553 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2319553)
  decide +kernel
#print axioms cover_2319553

def state_2319560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 87)))
def hex_2319560 : String := "40444241050705424105434007050741054305400905440505"
theorem cover_2319560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319560 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2319560)
  decide +kernel
#print axioms cover_2319560

def state_2319585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 87)))
def hex_2319585 : String := "40444207410507424143400705070741430540440506054340074405050744420505420A410543054044050505"
theorem cover_2319585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2319585)
  decide +kernel
#print axioms cover_2319585

def state_2319630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 87)))
def hex_2319630 : String := "4340440742070944084206064007440742074143080706"
theorem cover_2319630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2319630)
  decide +kernel
#print axioms cover_2319630

def state_2319654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 86)))
def hex_2319654 : String := "4143050808"
theorem cover_2319654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2319654)
  decide +kernel
#print axioms cover_2319654
end Mub6.Numerical.CircleFullD0.Forest
