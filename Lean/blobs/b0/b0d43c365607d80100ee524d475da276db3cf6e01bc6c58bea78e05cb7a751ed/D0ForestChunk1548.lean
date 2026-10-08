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
def state_2245075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 95 else 95)))
def hex_2245075 : String := "4140420743440641060706424308444108070843444105CF4108CF444106CF4109CF40074207CF"
theorem cover_2245075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245075 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_2245075)
  decide +kernel
#print axioms cover_2245075

def state_2245115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 23)))
def hex_2245115 : String := "4405410542404443054105054341050541064207094405430541050505"
theorem cover_2245115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245115 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_2245115)
  decide +kernel
#print axioms cover_2245115

def state_2245145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 46)))
def hex_2245145 : String := "410509"
theorem cover_2245145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2245145)
  decide +kernel
#print axioms cover_2245145

def state_2245149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 47)))
def hex_2245149 : String := "42400643050606"
theorem cover_2245149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2245149)
  decide +kernel
#print axioms cover_2245149

def state_2245158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 47)))
def hex_2245158 : String := "4344094106420706440606"
theorem cover_2245158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2245158)
  decide +kernel
#print axioms cover_2245158

def state_2245170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 47)))
def hex_2245170 : String := "4441050541424006050542404409430A41420706074405430541050A40440543050905"
theorem cover_2245170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2245170)
  decide +kernel
#print axioms cover_2245170

def state_2245205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 47)))
def hex_2245205 : String := "44410609414240064344054105CF060642404344094106074406410607CF4006CF"
theorem cover_2245205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2245205)
  decide +kernel
#print axioms cover_2245205

def state_2245238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 47)))
def hex_2245238 : String := "400643054405410508"
theorem cover_2245238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245238 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2245238)
  decide +kernel
#print axioms cover_2245238

def state_2245249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 23)))
def hex_2245249 : String := "440541050A"
theorem cover_2245249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245249 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2245249)
  decide +kernel
#print axioms cover_2245249

def state_2245255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 46)))
def hex_2245255 : String := "4105404243440541050544410505410840070A4305440541050505"
theorem cover_2245255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2245255)
  decide +kernel
#print axioms cover_2245255

def state_2245283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 47)))
def hex_2245283 : String := "40420843050808"
theorem cover_2245283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2245283)
  decide +kernel
#print axioms cover_2245283

def state_2245292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 47)))
def hex_2245292 : String := "430A44410840070808"
theorem cover_2245292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2245292)
  decide +kernel
#print axioms cover_2245292

def state_2245302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 94 else 47)))
def hex_2245302 : String := "4441050541080A"
theorem cover_2245302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245302 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2245302)
  decide +kernel
#print axioms cover_2245302
end Mub6.Numerical.CircleFullD0.Forest
