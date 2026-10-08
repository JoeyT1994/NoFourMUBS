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
def state_2293854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 102) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
def hex_2293854 : String := "40064342444106400609090906"
theorem cover_2293854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293854 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2293854)
  decide +kernel
#print axioms cover_2293854

def state_2293868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
def hex_2293868 : String := "43420544060505"
theorem cover_2293868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2293868)
  decide +kernel
#print axioms cover_2293868

def state_2293877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 68 else (if j.val < 4 then 110 else 92)))
def hex_2293877 : String := "444140434244070544060505434244410940070909094244090909400543420744414007090741050542054407054140050905"
theorem cover_2293877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2293877)
  decide +kernel
#print axioms cover_2293877

def state_2293928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 110 else 92)))
def hex_2293928 : String := "44414006430906404342054406050543424441094005430907410905444109404309050909424441060505440609414005094005430505"
theorem cover_2293928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293928 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2293928)
  decide +kernel
#print axioms cover_2293928

def state_2293983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 111 else 92)))
def hex_2293983 : String := "4244410605054406410505"
theorem cover_2293983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2293983)
  decide +kernel
#print axioms cover_2293983

def state_2293994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 93)))
def hex_2293994 : String := "414005094005430505"
theorem cover_2293994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2293994 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2293994)
  decide +kernel
#print axioms cover_2293994

def state_2294003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 46)))
def hex_2294003 : String := "44410640064342444106C44109400509444106C4094206064140060940054342090905"
theorem cover_2294003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2294003)
  decide +kernel
#print axioms cover_2294003

def state_2294038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 47)))
def hex_2294038 : String := "41400A4309094005434244414005094005430505054441094005090942054441090505"
theorem cover_2294038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2294038)
  decide +kernel
#print axioms cover_2294038

def state_2294074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
def hex_2294074 : String := "44400A4305420605400A430707"
theorem cover_2294074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294074 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2294074)
  decide +kernel
#print axioms cover_2294074
end Mub6.Numerical.CircleFullD0.Forest
