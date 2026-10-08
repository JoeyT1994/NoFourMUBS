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
def state_2288874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 47)))
def hex_2288874 : String := "41074042434441400A0540094243054405410509054107CF44410A4009424344094107090A074107400A4244434107400A070A434107400A070A070707"
theorem cover_2288874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_2288874)
  decide +kernel
#print axioms cover_2288874

def state_2288935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 23)))
def hex_2288935 : String := "444107400A42434405070A074107400A07"
theorem cover_2288935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288935 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2288935)
  decide +kernel
#print axioms cover_2288935

def state_2288952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 11)))
def hex_2288952 : String := "44400A42410A434409400A42430A0A0A0A0A400A4244410A430A0A0A0A"
theorem cover_2288952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_2288952)
  decide +kernel
#print axioms cover_2288952

def state_2288981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
def hex_2288981 : String := "4440064241064307064106430A06400A424144060A4443400642070A06430A054106440A0A"
theorem cover_2288981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2288981)
  decide +kernel
#print axioms cover_2288981

def state_2289020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_2289020 : String := "09"
theorem cover_2289020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289020 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2289020)
  decide +kernel
#print axioms cover_2289020

def state_2289022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_2289022 : String := "4207434409414207070708"
theorem cover_2289022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289022 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2289022)
  decide +kernel
#print axioms cover_2289022

def state_2289034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
def hex_2289034 : String := "43440941400707074407414005420744070505"
theorem cover_2289034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2289034)
  decide +kernel
#print axioms cover_2289034

def state_2289055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 22)))
def hex_2289055 : String := "09"
theorem cover_2289055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2289055)
  decide +kernel
#print axioms cover_2289055

def state_2289058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
def hex_2289058 : String := "4207430908"
theorem cover_2289058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289058 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2289058)
  decide +kernel
#print axioms cover_2289058

def state_2289066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 46)))
def hex_2289066 : String := "414009424306440941400706060909"
theorem cover_2289066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2289066)
  decide +kernel
#print axioms cover_2289066
end Mub6.Numerical.CircleFullD0.Forest
