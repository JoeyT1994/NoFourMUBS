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
def state_1030111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 61)))
def hex_1030111 : String := "404142084308084209434440414208074243440A0909430707410842430808430808404108420907084440094108420943080609410842430808430808"
theorem cover_1030111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030111 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1030111)
  decide +kernel
#print axioms cover_1030111

def state_1030172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
def hex_1030172 : String := "40410942094306094108420943444041084243060843060808084440090809"
theorem cover_1030172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030172 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1030172)
  decide +kernel
#print axioms cover_1030172

def state_1030203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 15)))
def hex_1030203 : String := "44404109420943440A09094109420943444041090A06400941084206060609"
theorem cover_1030203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1030203)
  decide +kernel
#print axioms cover_1030203

def state_1030235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 15)))
def hex_1030235 : String := "43444042074143440A09090A07404209410943060942074107430707440A09"
theorem cover_1030235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1030235)
  decide +kernel
#print axioms cover_1030235

def state_1030271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 30)))
def hex_1030271 : String := "4344400A410A0A40410606414209430609420A43060A0A"
theorem cover_1030271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1030271)
  decide +kernel
#print axioms cover_1030271

def state_1030295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 30)))
def hex_1030295 : String := "4440410A084142434405050A4344054006050A4208084041060641424306444006410A0A064306444006410707064243064408064306440A06"
theorem cover_1030295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030295 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1030295)
  decide +kernel
#print axioms cover_1030295

def state_1030352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 30)))
def hex_1030352 : String := "440A400A41420A43440A070A420A0A"
theorem cover_1030352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030352 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1030352)
  decide +kernel
#print axioms cover_1030352
end Mub6.Numerical.CircleFullD0.Forest
