import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_176637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 60 else 48)))
def hex_176637 : String := "444140429543080A4243440A090A0A404295050541400842090840424309444140420608094042070505094308444108050842094308440508"
theorem cover_176637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_176637)
  decide +kernel
#print axioms cover_176637

def state_176695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 61 else 96)))
def hex_176695 : String := "4140424344410A4042060505414042060A0640420643440A06060606430A0A42060A40424344054140070505060505"
theorem cover_176695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_176695)
  decide +kernel
#print axioms cover_176695

def state_176742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 61 else 97)))
def hex_176742 : String := "414042064308444106060642060A4042064344414007420605054108070742064344050606"
theorem cover_176742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_176742)
  decide +kernel
#print axioms cover_176742

def state_176779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 48)))
def hex_176779 : String := "4042430A0A4344414007050541400742430707070707424344414208050541090906434405414042430944050705050544054140070505"
theorem cover_176779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_176779)
  decide +kernel
#print axioms cover_176779
end Mub6.Numerical.CircleFullPrototype.Forest
