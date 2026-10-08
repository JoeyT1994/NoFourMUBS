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
def state_1603570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 50)))
def hex_1603570 : String := "444042434108440942400906084108440942400908080808404243410844080841084442404308410844090508084205080808"
theorem cover_1603570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1603570)
  decide +kernel
#print axioms cover_1603570

def state_1603625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 116 else 100)))
def hex_1603625 : String := "41440642060A06"
theorem cover_1603625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603625 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1603625)
  decide +kernel
#print axioms cover_1603625

def state_1603633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 117 else 100)))
def hex_1603633 : String := "44424043064109060640094306410906424043414406050541440942050744420540070505430541060540434109094109440707430A41080A"
theorem cover_1603633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1603633)
  decide +kernel
#print axioms cover_1603633

def state_1603690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 83) else (if j.val < 3 then 104 else (if j.val < 4 then 117 else 100)))
def hex_1603690 : String := "44420640414306440642060706064205404143070743050705"
theorem cover_1603690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1603690)
  decide +kernel
#print axioms cover_1603690

def state_1603715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 58 else 100)))
def hex_1603715 : String := "4341090A4144090A4440424109430607090A4042410707070A"
theorem cover_1603715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603715 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1603715)
  decide +kernel
#print axioms cover_1603715

def state_1603740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 100)))
def hex_1603740 : String := "424306410606430A41080A"
theorem cover_1603740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603740 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1603740)
  decide +kernel
#print axioms cover_1603740

def state_1603751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 101)))
def hex_1603751 : String := "40424341444205400A0505054144420540434107050743054105050505434108440A054144400A080844400742050707420543084108440A05"
theorem cover_1603751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1603751)
  decide +kernel
#print axioms cover_1603751
end Mub6.Numerical.CircleFullD0.Forest
