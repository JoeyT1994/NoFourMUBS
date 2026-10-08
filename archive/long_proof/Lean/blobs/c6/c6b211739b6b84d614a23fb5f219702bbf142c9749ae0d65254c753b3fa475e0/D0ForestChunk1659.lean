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
def state_2271355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 29)))
def hex_2271355 : String := "4243410540440542430541050905440542050541400A0540444243410509410A090942434108090A09444243050705424308080A43054105400905"
theorem cover_2271355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271355 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2271355)
  decide +kernel
#print axioms cover_2271355

def state_2271415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
def hex_2271415 : String := "4442430909094243090909"
theorem cover_2271415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271415 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2271415)
  decide +kernel
#print axioms cover_2271415

def state_2271429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 28)))
def hex_2271429 : String := "40444105084109094441050841054243440540090544090909"
theorem cover_2271429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2271429)
  decide +kernel
#print axioms cover_2271429

def state_2271454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 28)))
def hex_2271454 : String := "404441090841090944414243050705084142434440090540094105424305070544074041070907430507424344080944080908"
theorem cover_2271454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2271454)
  decide +kernel
#print axioms cover_2271454

def state_2271505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 28)))
def hex_2271505 : String := "4340050509"
theorem cover_2271505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271505 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2271505)
  decide +kernel
#print axioms cover_2271505

def state_2271513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
def hex_2271513 : String := "44410909410907"
theorem cover_2271513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271513 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2271513)
  decide +kernel
#print axioms cover_2271513

def state_2271521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 58)))
def hex_2271521 : String := "414243054044090944054105424305090505424340094441050941090740094441090941090909"
theorem cover_2271521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2271521)
  decide +kernel
#print axioms cover_2271521

def state_2271560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
def hex_2271560 : String := "414243404409094405084044090944410509410809430509424307400741090709"
theorem cover_2271560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271560 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2271560)
  decide +kernel
#print axioms cover_2271560

def state_2271594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 29)))
def hex_2271594 : String := "44410909410909"
theorem cover_2271594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2271594)
  decide +kernel
#print axioms cover_2271594
end Mub6.Numerical.CircleFullD0.Forest
