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
def state_2299638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 109 else 183)))
def hex_2299638 : String := "4041C442080841C44243444041C40841C4064008060843444008410742060740080708"
theorem cover_2299638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299638 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2299638)
  decide +kernel
#print axioms cover_2299638

def state_2299675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
def hex_2299675 : String := "41064342070606"
theorem cover_2299675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2299675)
  decide +kernel
#print axioms cover_2299675

def state_2299682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
def hex_2299682 : String := "4143C406434244400741C4074041060741C4430707444006410542094305064041060841C44243090843440940080906424406400641060706"
theorem cover_2299682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299682 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2299682)
  decide +kernel
#print axioms cover_2299682

def state_2299739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
def hex_2299739 : String := "404106084143C4064342444041080741C44342070808400841C40844400841C4420808400841080808"
theorem cover_2299739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299739 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2299739)
  decide +kernel
#print axioms cover_2299739

def state_2299782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 90)))
def hex_2299782 : String := "4041424344050A0606424344094009410509440640064106094344050A064105424305440540414243050505420943050605430544054041050A05"
theorem cover_2299782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2299782)
  decide +kernel
#print axioms cover_2299782

def state_2299842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
def hex_2299842 : String := "4142430A060A424344400A410A4309084008410A4342080708440A08430A08"
theorem cover_2299842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299842 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2299842)
  decide +kernel
#print axioms cover_2299842

def state_2299874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 91)))
def hex_2299874 : String := "4243070707"
theorem cover_2299874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2299874)
  decide +kernel
#print axioms cover_2299874
end Mub6.Numerical.CircleFullD0.Forest
