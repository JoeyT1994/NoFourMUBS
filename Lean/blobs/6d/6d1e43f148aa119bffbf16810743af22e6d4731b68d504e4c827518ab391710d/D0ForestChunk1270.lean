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
def state_1605261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 58 else 50)))
def hex_1605261 : String := "4440414243440605444007410706070742430507074142060A42054305444007050540410705410505"
theorem cover_1605261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1605261)
  decide +kernel
#print axioms cover_1605261

def state_1605303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 100)))
def hex_1605303 : String := "40414243440707070742080741424344404142050742050706400505444041420807080909430A4440070A40070A420943444007410A05074440070907"
theorem cover_1605303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1605303)
  decide +kernel
#print axioms cover_1605303

def state_1605364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 101)))
def hex_1605364 : String := "4041070741420507420507"
theorem cover_1605364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1605364)
  decide +kernel
#print axioms cover_1605364

def state_1605375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 51)))
def hex_1605375 : String := "404142434407050707424305070741424305444005050543444007410A05400505444007414243050707420507400705420543054440070505"
theorem cover_1605375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605375 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1605375)
  decide +kernel
#print axioms cover_1605375

def state_1605433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 25)))
def hex_1605433 : String := "44404109070A40070A"
theorem cover_1605433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1605433)
  decide +kernel
#print axioms cover_1605433

def state_1605442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
def hex_1605442 : String := "4440414309060741430A42440A40060A0643424440070A40070A0A42444007410A430A42070740074107070A400741430A420706430707"
theorem cover_1605442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1605442)
  decide +kernel
#print axioms cover_1605442

def state_1605499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_1605499 : String := "4105420805"
theorem cover_1605499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605499 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1605499)
  decide +kernel
#print axioms cover_1605499

def state_1605508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 48)))
def hex_1605508 : String := "40054241050505"
theorem cover_1605508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605508 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1605508)
  decide +kernel
#print axioms cover_1605508
end Mub6.Numerical.CircleFullD0.Forest
