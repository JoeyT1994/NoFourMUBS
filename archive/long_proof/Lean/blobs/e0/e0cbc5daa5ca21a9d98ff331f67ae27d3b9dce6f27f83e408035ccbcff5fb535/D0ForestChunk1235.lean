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
def state_1596865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 24)))
def hex_1596865 : String := "4041424309440942400941090909094243064441094206094142400706094206070941424306440A400A060942060A"
theorem cover_1596865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1596865)
  decide +kernel
#print axioms cover_1596865

def state_1596913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 25)))
def hex_1596913 : String := "4142430A44424007410A430607400709424007410707070A4243074441420707070707"
theorem cover_1596913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1596913)
  decide +kernel
#print axioms cover_1596913

def state_1596948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 25)))
def hex_1596948 : String := "4142430A444042410A060A0A4042410A050A0A0A42430544404142050A0606050A"
theorem cover_1596948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1596948)
  decide +kernel
#print axioms cover_1596948

def state_1596981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
def hex_1596981 : String := "404142430707070741424305444042050705050A420507"
theorem cover_1596981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1596981)
  decide +kernel
#print axioms cover_1596981

def state_1597005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
def hex_1597005 : String := "4305444142054406050505"
theorem cover_1597005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597005 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1597005)
  decide +kernel
#print axioms cover_1597005

def state_1597016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
def hex_1597016 : String := "43444143054406050505444144404243064441060641420607060942064306444109064109400706400742050744404206070640070507"
theorem cover_1597016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1597016)
  decide +kernel
#print axioms cover_1597016

def state_1597071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_1597071 : String := "41424305440605430A444044410A06410A42050A06404142050A050542054305440605"
theorem cover_1597071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597071 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1597071)
  decide +kernel
#print axioms cover_1597071
end Mub6.Numerical.CircleFullD0.Forest
