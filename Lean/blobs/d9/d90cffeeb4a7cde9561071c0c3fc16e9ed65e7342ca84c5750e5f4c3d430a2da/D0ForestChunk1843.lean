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
def state_2315500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 44)))
def hex_2315500 : String := "4443094142060607434142080808410808"
theorem cover_2315500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_2315500)
  decide +kernel
#print axioms cover_2315500

def state_2315518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 88)))
def hex_2315518 : String := "434142400905090941424044070944054309420709400944050509"
theorem cover_2315518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315518 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2315518)
  decide +kernel
#print axioms cover_2315518

def state_2315545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 89)))
def hex_2315545 : String := "43414240440908444305094308084044090844054308084209094142400844434208080808400844434105080808420808"
theorem cover_2315545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315545 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2315545)
  decide +kernel
#print axioms cover_2315545

def state_2315594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 58 else 44)))
def hex_2315594 : String := "4044430909434108080844434105094142400605050943414240090507094142400844430506080A420808"
theorem cover_2315594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2315594)
  decide +kernel
#print axioms cover_2315594

def state_2315638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
def hex_2315638 : String := "42400644060606"
theorem cover_2315638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315638 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2315638)
  decide +kernel
#print axioms cover_2315638

def state_2315645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
def hex_2315645 : String := "4240444106070844414243400644060606064207430907414208084208084044060844414342060606434209094206064143420606064342080808"
theorem cover_2315645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2315645)
  decide +kernel
#print axioms cover_2315645
end Mub6.Numerical.CircleFullD0.Forest
