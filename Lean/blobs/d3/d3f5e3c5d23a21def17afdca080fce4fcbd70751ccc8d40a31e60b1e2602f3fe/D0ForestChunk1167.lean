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
def state_1580526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
def hex_1580526 : String := "424443404108060640410742074407080743404108424406050808404142070842440743050744080807440808"
theorem cover_1580526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580526 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1580526)
  decide +kernel
#print axioms cover_1580526

def state_1580573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 102)))
def hex_1580573 : String := "430640414206440643064009060606"
theorem cover_1580573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1580573)
  decide +kernel
#print axioms cover_1580573

def state_1580588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 103)))
def hex_1580588 : String := "434041420544060505054041424443050505444340410842050805404108420A440808074305404108050542054443054041420544050505050505"
theorem cover_1580588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580588 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1580588)
  decide +kernel
#print axioms cover_1580588

def state_1580648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 102)))
def hex_1580648 : String := "4340410906064041094244064306090908"
theorem cover_1580648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580648 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1580648)
  decide +kernel
#print axioms cover_1580648

def state_1580666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 103)))
def hex_1580666 : String := "40414244080808424406050A08"
theorem cover_1580666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1580666)
  decide +kernel
#print axioms cover_1580666

def state_1580679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 103)))
def hex_1580679 : String := "40414244080808424443404108420544060505404142440808084244430505054408080843404108050540414205084205440505054443080843080808"
theorem cover_1580679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1580679)
  decide +kernel
#print axioms cover_1580679

def state_1580742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
def hex_1580742 : String := "424443400A0A0A4340060A064443090606"
theorem cover_1580742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1580742)
  decide +kernel
#print axioms cover_1580742
end Mub6.Numerical.CircleFullD0.Forest
