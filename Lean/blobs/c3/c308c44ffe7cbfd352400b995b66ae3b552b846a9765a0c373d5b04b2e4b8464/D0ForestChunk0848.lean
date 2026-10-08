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
def state_1504180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 173) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
def hex_1504180 : String := "4388420544054041070707"
theorem cover_1504180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504180 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1504180)
  decide +kernel
#print axioms cover_1504180

def state_1504191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
def hex_1504191 : String := "414342440540430707060742440506074388420507"
theorem cover_1504191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504191 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1504191)
  decide +kernel
#print axioms cover_1504191

def state_1504212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
def hex_1504212 : String := "438844054205404143884205440540090543880541438805438805"
theorem cover_1504212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504212 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1504212)
  decide +kernel
#print axioms cover_1504212

def state_1504239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
def hex_1504239 : String := "414344420508424043410988410605060844054205404143074205074388054106054388440542054041050505"
theorem cover_1504239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1504239)
  decide +kernel
#print axioms cover_1504239

def state_1504284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 29)))
def hex_1504284 : String := "440542054041434405420540414342054405404107070705054105050505410505"
theorem cover_1504284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504284 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 33) (hex := hex_1504284)
  decide +kernel
#print axioms cover_1504284

def state_1504317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
def hex_1504317 : String := "414344420540430805054206404309060644050643440542054041430844050643080541060505"
theorem cover_1504317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504317 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1504317)
  decide +kernel
#print axioms cover_1504317

def state_1504356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 14)))
def hex_1504356 : String := "4405404144054205434041050505050505"
theorem cover_1504356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1504356)
  decide +kernel
#print axioms cover_1504356

def state_1504375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 28)))
def hex_1504375 : String := "40414243080507420506410808"
theorem cover_1504375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504375 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1504375)
  decide +kernel
#print axioms cover_1504375

def state_1504392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 29)))
def hex_1504392 : String := "44404307410707084043410707414244070707424407400707074307410707"
theorem cover_1504392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1504392)
  decide +kernel
#print axioms cover_1504392
end Mub6.Numerical.CircleFullD0.Forest
