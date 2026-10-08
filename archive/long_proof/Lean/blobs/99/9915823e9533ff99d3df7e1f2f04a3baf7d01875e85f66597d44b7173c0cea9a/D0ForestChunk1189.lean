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
def state_1585805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 52 else 26)))
def hex_1585805 : String := "444041424307070707414243440A0A44404142444307070707074108420505400705430A44080742430A44400705050A40074142430A44400605060A420707"
theorem cover_1585805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585805 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1585805)
  decide +kernel
#print axioms cover_1585805

def state_1585870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 52)))
def hex_1585870 : String := "4142444307060606420707"
theorem cover_1585870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1585870)
  decide +kernel
#print axioms cover_1585870

def state_1585882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 52)))
def hex_1585882 : String := "4244434041424443080606064244070707410842050840064108424443050805084340064108050644434007080606"
theorem cover_1585882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1585882)
  decide +kernel
#print axioms cover_1585882

def state_1585929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 52)))
def hex_1585929 : String := "42444340074142050505404107074142054443054006050505434007054006054443074007410807430707"
theorem cover_1585929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585929 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1585929)
  decide +kernel
#print axioms cover_1585929

def state_1585972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 53)))
def hex_1585972 : String := "4006410642434405050607"
theorem cover_1585972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585972 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1585972)
  decide +kernel
#print axioms cover_1585972

def state_1585983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 27)))
def hex_1585983 : String := "4006414243400609060642430909434006444106070606"
theorem cover_1585983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1585983)
  decide +kernel
#print axioms cover_1585983

def state_1586008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
def hex_1586008 : String := "06"
theorem cover_1586008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586008 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1586008)
  decide +kernel
#print axioms cover_1586008

def state_1586010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
def hex_1586010 : String := "42444006434106420A06060606"
theorem cover_1586010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1586010)
  decide +kernel
#print axioms cover_1586010
end Mub6.Numerical.CircleFullD0.Forest
