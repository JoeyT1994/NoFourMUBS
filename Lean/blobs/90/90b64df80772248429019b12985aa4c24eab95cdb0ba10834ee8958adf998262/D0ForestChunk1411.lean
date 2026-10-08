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
def state_1639411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 9)))
def hex_1639411 : String := "43424441050641434244080844050805434244400609400A410A0A44064006410A0642440607064405410506420805"
theorem cover_1639411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1639411)
  decide +kernel
#print axioms cover_1639411

def state_1639460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 9)))
def hex_1639460 : String := "4409414043420944084108434008080707094043420944094109090909"
theorem cover_1639460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639460 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1639460)
  decide +kernel
#print axioms cover_1639460

def state_1639489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 9)))
def hex_1639489 : String := "44094140434408424108434008080841050605434408420941090908404344064241434006090606060609"
theorem cover_1639489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639489 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1639489)
  decide +kernel
#print axioms cover_1639489

def state_1639532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 9)))
def hex_1639532 : String := "420909"
theorem cover_1639532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1639532)
  decide +kernel
#print axioms cover_1639532

def state_1639535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 4)))
def hex_1639535 : String := "4406410540064344064241400643440642414005084006090606060606"
theorem cover_1639535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639535 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 29) (hex := hex_1639535)
  decide +kernel
#print axioms cover_1639535

def state_1639567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 8)))
def hex_1639567 : String := "43404142444307064341070741424006440643050606060606414244430A094305404142050905054407430540060542444305060506400641420944060606"
theorem cover_1639567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639567 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1639567)
  decide +kernel
#print axioms cover_1639567
end Mub6.Numerical.CircleFullD0.Forest
