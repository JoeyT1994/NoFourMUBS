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
def state_2287650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
def hex_2287650 : String := "410A4007420743444140064243444106074106070A06400742070941400A42434441080741084007080A0A40074207CF440A410A40050A"
theorem cover_2287650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287650 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 55) (hex := hex_2287650)
  decide +kernel
#print axioms cover_2287650

def state_2287705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 23)))
def hex_2287705 : String := "0A"
theorem cover_2287705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2287705)
  decide +kernel
#print axioms cover_2287705

def state_2287706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 23)))
def hex_2287706 : String := "4344410609410642400643444106094106424006CF4006CF0A060A"
theorem cover_2287706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287706 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 27) (hex := hex_2287706)
  decide +kernel
#print axioms cover_2287706

def state_2287737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 46)))
def hex_2287737 : String := "404243080A43050A420805"
theorem cover_2287737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2287737)
  decide +kernel
#print axioms cover_2287737

def state_2287749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 46)))
def hex_2287749 : String := "42434441400905094140420743084409080840074207094441400942080907414042070A420843080A400742070943440941404243050A0505094409410A09"
theorem cover_2287749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287749 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2287749)
  decide +kernel
#print axioms cover_2287749

def state_2287812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 46)))
def hex_2287812 : String := "4243440508444105094108404208434408084409410809084305440541054042434405410505440541400905090505"
theorem cover_2287812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287812 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_2287812)
  decide +kernel
#print axioms cover_2287812

def state_2287860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 47)))
def hex_2287860 : String := "40420843444105400A05080A08"
theorem cover_2287860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287860 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2287860)
  decide +kernel
#print axioms cover_2287860

def state_2287876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 47)))
def hex_2287876 : String := "444140080840074206430844410807084108400708"
theorem cover_2287876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287876 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2287876)
  decide +kernel
#print axioms cover_2287876
end Mub6.Numerical.CircleFullD0.Forest
