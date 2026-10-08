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
def state_1503424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 118)))
def hex_1503424 : String := "424043414405420540434144050A0505050505054043414244050707424405400705074142050742050743410707410705"
theorem cover_1503424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1503424)
  decide +kernel
#print axioms cover_1503424

def state_1503474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 119)))
def hex_1503474 : String := "40434144420640430A060606444205404341440508050543410605054206400806410644050606"
theorem cover_1503474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503474 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1503474)
  decide +kernel
#print axioms cover_1503474

def state_1503513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
def hex_1503513 : String := "4043410A424440430741070707400A0A07414244400A06060742444043410705050540080644070743414206074244070607414206074244050607"
theorem cover_1503513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503513 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1503513)
  decide +kernel
#print axioms cover_1503513

def state_1503572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
def hex_1503572 : String := "43414442060706444240430941050509074206404307070741444206400706064442054043070507420640434106070606"
theorem cover_1503572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1503572)
  decide +kernel
#print axioms cover_1503572

def state_1503622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 58)))
def hex_1503622 : String := "42054041050505"
theorem cover_1503622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1503622)
  decide +kernel
#print axioms cover_1503622

def state_1503630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 53 else 59)))
def hex_1503630 : String := "4041060505"
theorem cover_1503630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1503630)
  decide +kernel
#print axioms cover_1503630

def state_1503637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 84) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 59)))
def hex_1503637 : String := "43444205404341420607420507410805434106070642064043060606440506"
theorem cover_1503637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503637 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1503637)
  decide +kernel
#print axioms cover_1503637
end Mub6.Numerical.CircleFullD0.Forest
