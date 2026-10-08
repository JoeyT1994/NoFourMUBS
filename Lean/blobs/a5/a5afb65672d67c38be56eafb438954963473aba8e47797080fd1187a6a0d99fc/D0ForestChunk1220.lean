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
def state_1593163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 25)))
def hex_1593163 : String := "44414340420A06420A4441090941064340060A0640060A434008420A4441434008090A0A410A0A40060A41434006420A0606434006420A44410A0A0606"
theorem cover_1593163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1593163)
  decide +kernel
#print axioms cover_1593163

def state_1593224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 25)))
def hex_1593224 : String := "44414340054405060643400644424109430909054241434006090643400644070706060641064340064244410606060606"
theorem cover_1593224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1593224)
  decide +kernel
#print axioms cover_1593224

def state_1593276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 25)))
def hex_1593276 : String := "444043410842444009064043080808084108424440090740434108420A0841080A08440908430808404341084244080508410842444043080A05050808"
theorem cover_1593276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593276 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1593276)
  decide +kernel
#print axioms cover_1593276

def state_1593337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 25)))
def hex_1593337 : String := "440808"
theorem cover_1593337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593337 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1593337)
  decide +kernel
#print axioms cover_1593337

def state_1593342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 50)))
def hex_1593342 : String := "404143424409080809434244400909400A0A4409400908420A44090A41084342440707084244070A08"
theorem cover_1593342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593342 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 41) (hex := hex_1593342)
  decide +kernel
#print axioms cover_1593342

def state_1593383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 51)))
def hex_1593383 : String := "4041430806434244400A0A054440060806420A0641084308420508"
theorem cover_1593383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1593383)
  decide +kernel
#print axioms cover_1593383
end Mub6.Numerical.CircleFullD0.Forest
