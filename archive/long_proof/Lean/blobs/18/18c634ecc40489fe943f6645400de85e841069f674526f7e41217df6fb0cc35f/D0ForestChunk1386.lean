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
def state_1633323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 38)))
def hex_1633323 : String := "42434144400A060A440A05410A0A434144400A4243050A43410A050A400A42050A44400A4205050A41440A0A0A"
theorem cover_1633323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1633323)
  decide +kernel
#print axioms cover_1633323

def state_1633368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 38)))
def hex_1633368 : String := "42430541440605054341444205050505414442404341050507054043410805080942054043050A05444205400A0505"
theorem cover_1633368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1633368)
  decide +kernel
#print axioms cover_1633368

def state_1633415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 39)))
def hex_1633415 : String := "404243050A4341440A05050A42054305410505"
theorem cover_1633415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633415 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1633415)
  decide +kernel
#print axioms cover_1633415

def state_1633434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 51 else 19)))
def hex_1633434 : String := "44404207410A0A42074143440942074008070743440942050A07400A42074143444207400A0542050A07430507"
theorem cover_1633434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633434 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1633434)
  decide +kernel
#print axioms cover_1633434

def state_1633479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
def hex_1633479 : String := "4244410609064441434044094206410609060943404409420509050941430640444206090606430540444207094205414305070505"
theorem cover_1633479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1633479)
  decide +kernel
#print axioms cover_1633479
end Mub6.Numerical.CircleFullD0.Forest
