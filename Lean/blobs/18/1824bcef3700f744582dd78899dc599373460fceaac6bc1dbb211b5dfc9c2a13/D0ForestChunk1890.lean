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
def state_2326625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 230) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 177)))
def hex_2326625 : String := "434044420A41434044420A4105430509420808440A0A834340440942080844060683420A41434008070843400844060608440A0A83"
theorem cover_2326625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326625 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_2326625)
  decide +kernel
#print axioms cover_2326625

def state_2326678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 231) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 177)))
def hex_2326678 : String := "434044420A4143068306420A414306080644060683"
theorem cover_2326678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2326678)
  decide +kernel
#print axioms cover_2326678

def state_2326700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 230) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 177)))
def hex_2326700 : String := "434044424143404442050507058343400944420605420606834107434009078342410743400807080744424105430683070783"
theorem cover_2326700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326700 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2326700)
  decide +kernel
#print axioms cover_2326700

def state_2326751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 231) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 177)))
def hex_2326751 : String := "43404442414306830609424143060806414306080644060683"
theorem cover_2326751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2326751)
  decide +kernel
#print axioms cover_2326751

def state_2326776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 127 else 88)))
def hex_2326776 : String := "83"
theorem cover_2326776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326776 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2326776)
  decide +kernel
#print axioms cover_2326776

def state_2326778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 63 else 89)))
def hex_2326778 : String := "414340444208080844420A41090A420808400844090843404442080808440A0A40080A"
theorem cover_2326778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326778 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_2326778)
  decide +kernel
#print axioms cover_2326778

def state_2326814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 89)))
def hex_2326814 : String := "434044420808084442410743078307074008448308"
theorem cover_2326814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2326814)
  decide +kernel
#print axioms cover_2326814

def state_2326835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 89)))
def hex_2326835 : String := "43404442080808444241434008440A07834340084406068341430783434008440606834208084008448308"
theorem cover_2326835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326835 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2326835)
  decide +kernel
#print axioms cover_2326835
end Mub6.Numerical.CircleFullD0.Forest
