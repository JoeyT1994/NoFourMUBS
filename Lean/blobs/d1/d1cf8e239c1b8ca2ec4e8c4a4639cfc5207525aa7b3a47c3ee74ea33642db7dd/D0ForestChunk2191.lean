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
def state_2606365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_2606365 : String := "444041424344400805070707084142434405410705444107050743050742430544050A4305440508400A41070A"
theorem cover_2606365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606365 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2606365)
  decide +kernel
#print axioms cover_2606365

def state_2606410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
def hex_2606410 : String := "44404107434207070741074342440907070707"
theorem cover_2606410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2606410)
  decide +kernel
#print axioms cover_2606410

def state_2606429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2606429 : String := "42434440424106060842064143050606400A42060A44400809404207430A0742430607430A07430A444008094008430A07"
theorem cover_2606429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2606429)
  decide +kernel
#print axioms cover_2606429

def state_2606480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_2606480 : String := "4344414240434441070507070740434405410705444107050743050742064043050943050641074244400606064440430A0707074441070907"
theorem cover_2606480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606480 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2606480)
  decide +kernel
#print axioms cover_2606480

def state_2606537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_2606537 : String := "434441404243050705054042430544054109050505414407070A444143070709414344400742074107070707430707"
theorem cover_2606537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2606537)
  decide +kernel
#print axioms cover_2606537

def state_2606584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2606584 : String := "4243440642060A440942064306074344050A4409430A09"
theorem cover_2606584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2606584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2606584)
  decide +kernel
#print axioms cover_2606584
end Mub6.Numerical.CircleFullD0.Forest
