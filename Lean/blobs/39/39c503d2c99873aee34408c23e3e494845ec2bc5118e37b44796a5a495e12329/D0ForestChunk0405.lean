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
def state_1034667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 63)))
def hex_1034667 : String := "43444041420A43440A840A0A41424344400A410606840A434440410A0A410606844406844243440A840A4344400809840A8444400A41060A84"
theorem cover_1034667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034667 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1034667)
  decide +kernel
#print axioms cover_1034667

def state_1034724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 31)))
def hex_1034724 : String := "440A400941090A"
theorem cover_1034724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1034724)
  decide +kernel
#print axioms cover_1034724

def state_1034733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 14)))
def hex_1034733 : String := "404142444307410740070907074244090707414244430540090943400705404142444305410740070507074244090707414244054305404108050509090909"
theorem cover_1034733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1034733)
  decide +kernel
#print axioms cover_1034733

def state_1034797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 15)))
def hex_1034797 : String := "07"
theorem cover_1034797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1034797)
  decide +kernel
#print axioms cover_1034797

def state_1034799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 15)))
def hex_1034799 : String := "4243444006410609064440074142080742434405064440414205050505400708074006410642060607"
theorem cover_1034799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034799 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1034799)
  decide +kernel
#print axioms cover_1034799

def state_1034840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 15)))
def hex_1034840 : String := "42434409064440410709094007414243064440060906060907"
theorem cover_1034840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1034840)
  decide +kernel
#print axioms cover_1034840

def state_1034867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_1034867 : String := "414243440A07440A414007420A070A074243440840074107080A43070A"
theorem cover_1034867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1034867)
  decide +kernel
#print axioms cover_1034867
end Mub6.Numerical.CircleFullD0.Forest
