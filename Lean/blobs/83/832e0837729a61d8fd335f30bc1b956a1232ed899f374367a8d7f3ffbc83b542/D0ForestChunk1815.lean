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
def state_2308741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
def hex_2308741 : String := "40410644060641094442090609"
theorem cover_2308741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2308741)
  decide +kernel
#print axioms cover_2308741

def state_2308756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 10)))
def hex_2308756 : String := "4340414407434207400741050707074144050544070A07"
theorem cover_2308756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308756 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2308756)
  decide +kernel
#print axioms cover_2308756

def state_2308783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 20)))
def hex_2308783 : String := "424305074305400605"
theorem cover_2308783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308783 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2308783)
  decide +kernel
#print axioms cover_2308783

def state_2308793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 21)))
def hex_2308793 : String := "434041440505440743420740070507410544050540410607410544074207430706"
theorem cover_2308793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2308793)
  decide +kernel
#print axioms cover_2308793

def state_2308826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 21)))
def hex_2308826 : String := "43404105440542430540060543050605404106440606410544054243050606"
theorem cover_2308826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2308826)
  decide +kernel
#print axioms cover_2308826

def state_2308858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 20)))
def hex_2308858 : String := "420743400742070507"
theorem cover_2308858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2308858)
  decide +kernel
#print axioms cover_2308858

def state_2308868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 21)))
def hex_2308868 : String := "434007440743070707"
theorem cover_2308868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2308868)
  decide +kernel
#print axioms cover_2308868

def state_2308879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 21)))
def hex_2308879 : String := "444207430907424341400709070743414009050941404406094407430942060607"
theorem cover_2308879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2308879)
  decide +kernel
#print axioms cover_2308879

def state_2308912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 21)))
def hex_2308912 : String := "444243050743054105074243410507414007050743410509414044054305420505054007440509"
theorem cover_2308912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308912 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2308912)
  decide +kernel
#print axioms cover_2308912

def state_2308951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 21)))
def hex_2308951 : String := "400744074207434140440742070644054205050741400644060607"
theorem cover_2308951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308951 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2308951)
  decide +kernel
#print axioms cover_2308951

def state_2308979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
def hex_2308979 : String := "4405420505"
theorem cover_2308979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2308979)
  decide +kernel
#print axioms cover_2308979

def state_2308985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 20)))
def hex_2308985 : String := "42074305400705"
theorem cover_2308985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308985 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2308985)
  decide +kernel
#print axioms cover_2308985
end Mub6.Numerical.CircleFullD0.Forest
