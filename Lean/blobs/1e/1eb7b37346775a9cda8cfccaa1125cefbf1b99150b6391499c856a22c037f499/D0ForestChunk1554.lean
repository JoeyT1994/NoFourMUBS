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
def state_2246441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 46 else 48)))
def hex_2246441 : String := "40444341420A050A414240064406430A0606420740060A4341420A40060A0741424007094006440609420740070A44430A41424044050905050A430A41090A"
theorem cover_2246441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246441 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2246441)
  decide +kernel
#print axioms cover_2246441

def state_2246504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 48)))
def hex_2246504 : String := "40444305064341050A410642400644430606430A41060A0644054305410542404443054105054305414209050A0505"
theorem cover_2246504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246504 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_2246504)
  decide +kernel
#print axioms cover_2246504

def state_2246552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 49)))
def hex_2246552 : String := "42094043090907"
theorem cover_2246552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2246552)
  decide +kernel
#print axioms cover_2246552

def state_2246560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 46 else 49)))
def hex_2246560 : String := "40434441090709444109420740070A0909"
theorem cover_2246560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246560 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2246560)
  decide +kernel
#print axioms cover_2246560

def state_2246579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 92 else 49)))
def hex_2246579 : String := "444142400609060A410942090A"
theorem cover_2246579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246579 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2246579)
  decide +kernel
#print axioms cover_2246579

def state_2246592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 93 else 49)))
def hex_2246592 : String := "4441424006090642404307440607430A4441060A09400643440641060A44064106420606410942094043440609440609434441060A0944410642090609"
theorem cover_2246592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2246592)
  decide +kernel
#print axioms cover_2246592

def state_2246653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 49)))
def hex_2246653 : String := "434441050A094441094240430A4441090A0909404344050A4441050A41090A0709"
theorem cover_2246653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246653 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2246653)
  decide +kernel
#print axioms cover_2246653
end Mub6.Numerical.CircleFullD0.Forest
