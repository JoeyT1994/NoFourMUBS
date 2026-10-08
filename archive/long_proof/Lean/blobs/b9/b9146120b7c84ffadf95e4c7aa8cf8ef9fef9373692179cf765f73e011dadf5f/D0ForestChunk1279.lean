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
def state_1607479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 100)))
def hex_1607479 : String := "42434440414207074207074142090A09400741420907094440410607414209430A0609400609434440070A40060A06"
theorem cover_1607479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1607479)
  decide +kernel
#print axioms cover_1607479

def state_1607526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 101)))
def hex_1607526 : String := "404106064142434440064241070707070606424344400709070707"
theorem cover_1607526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607526 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1607526)
  decide +kernel
#print axioms cover_1607526

def state_1607553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 61 else 50)))
def hex_1607553 : String := "444006410642434440060906060606"
theorem cover_1607553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607553 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1607553)
  decide +kernel
#print axioms cover_1607553

def state_1607568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
def hex_1607568 : String := "4209434440414207060841420943444007410A09074440064106070609400741420907094440064142080609400609"
theorem cover_1607568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607568 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1607568)
  decide +kernel
#print axioms cover_1607568

def state_1607615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 51)))
def hex_1607615 : String := "404106420706414243444042050705054440060906434440064106070606420943444007090706"
theorem cover_1607615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1607615)
  decide +kernel
#print axioms cover_1607615

def state_1607654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 25)))
def hex_1607654 : String := "444006414243444006090606064208064006410606"
theorem cover_1607654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1607654)
  decide +kernel
#print axioms cover_1607654

def state_1607675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
def hex_1607675 : String := "43444006410642434440064142430706064207060706060606"
theorem cover_1607675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 25) (hex := hex_1607675)
  decide +kernel
#print axioms cover_1607675

def state_1607702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 13)))
def hex_1607702 : String := "414244434207070606064244070707"
theorem cover_1607702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1607702)
  decide +kernel
#print axioms cover_1607702
end Mub6.Numerical.CircleFullD0.Forest
