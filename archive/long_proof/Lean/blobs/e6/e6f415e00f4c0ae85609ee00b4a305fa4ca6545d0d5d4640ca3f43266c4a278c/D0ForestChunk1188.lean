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
def state_1585610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
def hex_1585610 : String := "42444340414208060841420A444340410605050A430505420544050540060A43400609064443400641424443400641060506060642440707070606"
theorem cover_1585610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1585610)
  decide +kernel
#print axioms cover_1585610

def state_1585669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
def hex_1585669 : String := "42444308084305084443074007410707430706"
theorem cover_1585669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1585669)
  decide +kernel
#print axioms cover_1585669

def state_1585690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 52)))
def hex_1585690 : String := "444305400A0505"
theorem cover_1585690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1585690)
  decide +kernel
#print axioms cover_1585690

def state_1585698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 104)))
def hex_1585698 : String := "4340414244430505054443404106070540064106054305064205444305050505404142440A060642444305050544434006050606414205444305050505"
theorem cover_1585698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585698 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1585698)
  decide +kernel
#print axioms cover_1585698

def state_1585759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 53 else 105)))
def hex_1585759 : String := "4340414205060505400605"
theorem cover_1585759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1585759)
  decide +kernel
#print axioms cover_1585759

def state_1585770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 52)))
def hex_1585770 : String := "42054443054041420544430505050505430505"
theorem cover_1585770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1585770)
  decide +kernel
#print axioms cover_1585770

def state_1585789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 53)))
def hex_1585789 : String := "404106420906414205434405050605"
theorem cover_1585789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1585789)
  decide +kernel
#print axioms cover_1585789
end Mub6.Numerical.CircleFullD0.Forest
