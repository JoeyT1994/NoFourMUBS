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
def state_159438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
def hex_159438 : String := "4243064406064306444042410644070607064042064106430644080906"
theorem cover_159438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_159438)
  decide +kernel
#print axioms cover_159438

def state_159468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 20)))
def hex_159468 : String := "4306440A4041060A06"
theorem cover_159468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_159468)
  decide +kernel
#print axioms cover_159468

def state_159477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 20)))
def hex_159477 : String := "430A440A404142430644404142064306800A064041064206440505064344050544400708404109050942430A440A40420A050A43054405050A"
theorem cover_159477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_159477)
  decide +kernel
#print axioms cover_159477

def state_159534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
def hex_159534 : String := "06"
theorem cover_159534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_159534)
  decide +kernel
#print axioms cover_159534

def state_159535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 20)))
def hex_159535 : String := "4340070640414243074407090842430A44074041424305440505050541080A43050841080A"
theorem cover_159535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159535 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_159535)
  decide +kernel
#print axioms cover_159535

def state_159572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 20)))
def hex_159572 : String := "0A"
theorem cover_159572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159572 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_159572)
  decide +kernel
#print axioms cover_159572

def state_159574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 21)))
def hex_159574 : String := "42430640444106420643064044410942430540080605090641064206090643064044090909"
theorem cover_159574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 37) (hex := hex_159574)
  decide +kernel
#print axioms cover_159574

def state_159611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 21)))
def hex_159611 : String := "4243064044424143064008060A414305404405050A05420841430540050905440A420641060A43054005440A09"
theorem cover_159611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_159611)
  decide +kernel
#print axioms cover_159611

def state_159656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
def hex_159656 : String := "440A41060A"
theorem cover_159656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_159656)
  decide +kernel
#print axioms cover_159656
end Mub6.Numerical.CircleFullPrototype.Forest
