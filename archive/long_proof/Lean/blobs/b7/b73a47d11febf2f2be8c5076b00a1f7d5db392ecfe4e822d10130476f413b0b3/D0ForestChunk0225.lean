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
def state_991484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 89)))
def hex_991484 : String := "404443410742060741070607444341420507420540080941054205404443080643070544090543410542050705"
theorem cover_991484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_991484)
  decide +kernel
#print axioms cover_991484

def state_991529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 89)))
def hex_991529 : String := "400744434107084107424044080744094307070807"
theorem cover_991529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_991529)
  decide +kernel
#print axioms cover_991529

def state_991550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 111) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 89)))
def hex_991550 : String := "4240440643080644430809434142050808414205400A0906400844084308414240084408090708"
theorem cover_991550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_991550)
  decide +kernel
#print axioms cover_991550

def state_991590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
def hex_991590 : String := "4240070507"
theorem cover_991590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991590 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_991590)
  decide +kernel
#print axioms cover_991590

def state_991596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 45)))
def hex_991596 : String := "40444341070606430707444341054205404443080505054105420540060505"
theorem cover_991596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991596 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_991596)
  decide +kernel
#print axioms cover_991596

def state_991627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
def hex_991627 : String := "404443070707444341074240074443084107080707410742404443070607444341050941050A43050540074443074107424007090707430707"
theorem cover_991627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991627 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_991627)
  decide +kernel
#print axioms cover_991627

def state_991684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_991684 : String := "410742444043070705400705444007430741074244400705050707"
theorem cover_991684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_991684)
  decide +kernel
#print axioms cover_991684
end Mub6.Numerical.CircleFullD0.Forest
