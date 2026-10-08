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
def state_1489643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 28)))
def hex_1489643 : String := "434144064240074341070707064406424006070641440542074006430705440507"
theorem cover_1489643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1489643)
  decide +kernel
#print axioms cover_1489643

def state_1489676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 28)))
def hex_1489676 : String := "43414405420943404109060940410944050905440542054340060840060541440542054043410505050505"
theorem cover_1489676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489676 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1489676)
  decide +kernel
#print axioms cover_1489676

def state_1489720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 29)))
def hex_1489720 : String := "434142440707444043060743410942070641070740070942440707444006434142060606410706400743414207440705420744060507410707"
theorem cover_1489720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489720 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1489720)
  decide +kernel
#print axioms cover_1489720

def state_1489779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 29)))
def hex_1489779 : String := "09"
theorem cover_1489779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489779 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1489779)
  decide +kernel
#print axioms cover_1489779

def state_1489781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 29)))
def hex_1489781 : String := "4443404109070940070909"
theorem cover_1489781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489781 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1489781)
  decide +kernel
#print axioms cover_1489781

def state_1489793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 58)))
def hex_1489793 : String := "434041420944060942440643400608070609404142074406094207440643070741090A"
theorem cover_1489793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1489793)
  decide +kernel
#print axioms cover_1489793

def state_1489828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 59)))
def hex_1489828 : String := "434041094244434007090707444340410606084007094340050940070909404109420744070709"
theorem cover_1489828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489828 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1489828)
  decide +kernel
#print axioms cover_1489828

def state_1489867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 29)))
def hex_1489867 : String := "410942440707444043410707074341090A05400709"
theorem cover_1489867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1489867)
  decide +kernel
#print axioms cover_1489867
end Mub6.Numerical.CircleFullD0.Forest
