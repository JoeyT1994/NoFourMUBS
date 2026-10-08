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
def state_2551843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 46)))
def hex_2551843 : String := "434144054042094308070544074007094144054007054407400709"
theorem cover_2551843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2551843)
  decide +kernel
#print axioms cover_2551843

def state_2551870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 46)))
def hex_2551870 : String := "43414405404243080606054440070540420743070642430841050743054105440540070541440506440640064243070606"
theorem cover_2551870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2551870)
  decide +kernel
#print axioms cover_2551870

def state_2551920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_2551920 : String := "42434144400742070A0A440740074207074144074007430A070743410A4440074207070A410644064005420706"
theorem cover_2551920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551920 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 45) (hex := hex_2551920)
  decide +kernel
#print axioms cover_2551920

def state_2551967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 56 else 47)))
def hex_2551967 : String := "414440420943084108094209430841050940420808420808444042074307074209430809404209430841080742064306E2"
theorem cover_2551967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551967 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 49) (hex := hex_2551967)
  decide +kernel
#print axioms cover_2551967

def state_2552017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 57 else 47)))
def hex_2552017 : String := "444043420741440640060907420706430909404342090A4209444106070A4342094441400805094108400808420944414009050941400A09400909"
theorem cover_2552017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552017 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2552017)
  decide +kernel
#print axioms cover_2552017

def state_2552076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 56 else (if j.val < 4 then 57 else 47)))
def hex_2552076 : String := "44400709404342074144070A0709430909"
theorem cover_2552076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552076 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2552076)
  decide +kernel
#print axioms cover_2552076
end Mub6.Numerical.CircleFullD0.Forest
