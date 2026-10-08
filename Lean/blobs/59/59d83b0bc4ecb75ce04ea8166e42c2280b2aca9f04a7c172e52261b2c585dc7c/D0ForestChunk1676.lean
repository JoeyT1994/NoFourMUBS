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
def state_2275469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 54) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 58)))
def hex_2275469 : String := "42434407404107420607070707"
theorem cover_2275469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275469 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2275469)
  decide +kernel
#print axioms cover_2275469

def state_2275482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 58)))
def hex_2275482 : String := "42434440414243440606060942060841074206434407060640414206090641420607064440060606434440090740094107094407400907"
theorem cover_2275482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275482 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2275482)
  decide +kernel
#print axioms cover_2275482

def state_2275537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 58)))
def hex_2275537 : String := "41074243440741074006060707"
theorem cover_2275537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2275537)
  decide +kernel
#print axioms cover_2275537

def state_2275551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 59)))
def hex_2275551 : String := "41424340444106060644070606434044074105090707424340410606410606064340094144074206094409094009410606"
theorem cover_2275551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275551 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2275551)
  decide +kernel
#print axioms cover_2275551

def state_2275600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 59)))
def hex_2275600 : String := "410742434144070644060606434107440740420643410606060707"
theorem cover_2275600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_2275600)
  decide +kernel
#print axioms cover_2275600

def state_2275627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 29)))
def hex_2275627 : String := "43444005054041054243050905410542430541054405400505054440410709074041070907"
theorem cover_2275627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275627 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_2275627)
  decide +kernel
#print axioms cover_2275627

def state_2275664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
def hex_2275664 : String := "4107440742434044410542430507054105424340410544054209050540410744074206070743050707074340050507"
theorem cover_2275664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275664 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 47) (hex := hex_2275664)
  decide +kernel
#print axioms cover_2275664
end Mub6.Numerical.CircleFullD0.Forest
