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
def state_986616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 43)))
def hex_986616 : String := "444142050742400605404307064344410742064006430709074441090641054205074105420507"
theorem cover_986616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_986616)
  decide +kernel
#print axioms cover_986616

def state_986658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 86)))
def hex_986658 : String := "4205400705"
theorem cover_986658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986658 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_986658)
  decide +kernel
#print axioms cover_986658

def state_986664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 86)))
def hex_986664 : String := "4043050505"
theorem cover_986664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986664 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_986664)
  decide +kernel
#print axioms cover_986664

def state_986670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 86)))
def hex_986670 : String := "43444107424043074408050A40070A0744414205074240434441054205080544410505054305054043074441070807430A440A0A4105420507"
theorem cover_986670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_986670)
  decide +kernel
#print axioms cover_986670

def state_986727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 86)))
def hex_986727 : String := "43440A0A44410542050A05"
theorem cover_986727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_986727)
  decide +kernel
#print axioms cover_986727

def state_986738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 87)))
def hex_986738 : String := "41054205400705"
theorem cover_986738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_986738)
  decide +kernel
#print axioms cover_986738

def state_986747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 86)))
def hex_986747 : String := "05"
theorem cover_986747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_986747)
  decide +kernel
#print axioms cover_986747

def state_986749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 103 else 86)))
def hex_986749 : String := "05"
theorem cover_986749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986749 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_986749)
  decide +kernel
#print axioms cover_986749

def state_986751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 86)))
def hex_986751 : String := "43444142054007054205404344410742064006090744410906094344410542050A054441054205404309050505410505444105420540434406050643050505"
theorem cover_986751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_986751)
  decide +kernel
#print axioms cover_986751

def state_986814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 86)))
def hex_986814 : String := "43444105420540430A05050505"
theorem cover_986814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_986814)
  decide +kernel
#print axioms cover_986814

def state_986827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 87)))
def hex_986827 : String := "05"
theorem cover_986827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986827 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_986827)
  decide +kernel
#print axioms cover_986827

def state_986829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
def hex_986829 : String := "43074441074240074307444107420907070707"
theorem cover_986829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_986829)
  decide +kernel
#print axioms cover_986829

def state_986849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 102 else 43)))
def hex_986849 : String := "444106424043074441074240070A07074306440A0640070607"
theorem cover_986849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986849 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_986849)
  decide +kernel
#print axioms cover_986849

def state_986876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 86)))
def hex_986876 : String := "4240070606"
theorem cover_986876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986876 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_986876)
  decide +kernel
#print axioms cover_986876
end Mub6.Numerical.CircleFullD0.Forest
