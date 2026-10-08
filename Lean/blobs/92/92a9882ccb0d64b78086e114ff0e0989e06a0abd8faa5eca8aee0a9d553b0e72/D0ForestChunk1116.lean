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
def state_1568261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_1568261 : String := "4440414243060606060640444105094105424305400944050505440605"
theorem cover_1568261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1568261)
  decide +kernel
#print axioms cover_1568261

def state_1568292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_1568292 : String := "43414244064043094142440A0A08094306414244060A060644064009064244064009060641424440070640434108070743410A0A0A0A424405074406400706"
theorem cover_1568292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1568292)
  decide +kernel
#print axioms cover_1568292

def state_1568355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_1568355 : String := "43064142440643060A0606"
theorem cover_1568355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568355 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1568355)
  decide +kernel
#print axioms cover_1568355

def state_1568372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_1568372 : String := "4344090544414240084305080542400943094241080709094105424008430544080505"
theorem cover_1568372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568372 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1568372)
  decide +kernel
#print axioms cover_1568372

def state_1568407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_1568407 : String := "43444105060544414240434105050A434105050A05424043060A0606410542404305440A054305440A0505"
theorem cover_1568407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568407 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1568407)
  decide +kernel
#print axioms cover_1568407

def state_1568450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
def hex_1568450 : String := "40054305440605"
theorem cover_1568450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568450 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1568450)
  decide +kernel
#print axioms cover_1568450

def state_1568457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
def hex_1568457 : String := "424043094409094306440642414043094442410A06064241400505090506060609"
theorem cover_1568457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568457 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 33) (hex := hex_1568457)
  decide +kernel
#print axioms cover_1568457

def state_1568491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_1568491 : String := "42404405050505"
theorem cover_1568491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1568491)
  decide +kernel
#print axioms cover_1568491
end Mub6.Numerical.CircleFullD0.Forest
