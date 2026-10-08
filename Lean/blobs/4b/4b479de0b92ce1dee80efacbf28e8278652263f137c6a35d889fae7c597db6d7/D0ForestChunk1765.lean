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
def state_2296772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
def hex_2296772 : String := "43420744400741C40740414307050541C40742074407400541C405"
theorem cover_2296772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2296772)
  decide +kernel
#print axioms cover_2296772

def state_2296799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
def hex_2296799 : String := "41C443424440070606444041C40941C4064041C40606424407400741C406444041C40741C442074306074041C40741C4424306074306440705"
theorem cover_2296799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296799 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2296799)
  decide +kernel
#print axioms cover_2296799

def state_2296857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 45)))
def hex_2296857 : String := "4407400741434207440740074143420744074007414307070707070707"
theorem cover_2296857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296857 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 29) (hex := hex_2296857)
  decide +kernel
#print axioms cover_2296857

def state_2296886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 45)))
def hex_2296886 : String := "4440414342060606074143C442060643070740414342070606074143C442444006410607400641060744060643420744400741C407400541C407420708"
theorem cover_2296886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296886 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2296886)
  decide +kernel
#print axioms cover_2296886

def state_2296947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
def hex_2296947 : String := "43420744074007414306070607"
theorem cover_2296947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296947 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2296947)
  decide +kernel
#print axioms cover_2296947

def state_2296960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
def hex_2296960 : String := "434207440740070607"
theorem cover_2296960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296960 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2296960)
  decide +kernel
#print axioms cover_2296960

def state_2296970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
def hex_2296970 : String := "414342440705444143400542440705444143400A4244070544410A09410A05400542050A4307054105050505050505"
theorem cover_2296970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 47) (hex := hex_2296970)
  decide +kernel
#print axioms cover_2296970
end Mub6.Numerical.CircleFullD0.Forest
