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
def state_1496078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 119)))
def hex_1496078 : String := "4341420909424440070707444043064107064309094043410707070941420744404309070909420744404307074341090707400709"
theorem cover_1496078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496078 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1496078)
  decide +kernel
#print axioms cover_1496078

def state_1496132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 118)))
def hex_1496132 : String := "40064306414406424006434108064109060606"
theorem cover_1496132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1496132)
  decide +kernel
#print axioms cover_1496132

def state_1496152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 119)))
def hex_1496152 : String := "43410A06414244060A0606"
theorem cover_1496152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496152 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1496152)
  decide +kernel
#print axioms cover_1496152

def state_1496164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 204 else 119)))
def hex_1496164 : String := "414244400609090A424406404305410A06430841090806"
theorem cover_1496164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1496164)
  decide +kernel
#print axioms cover_1496164

def state_1496188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 81 else (if j.val < 4 then 205 else 119)))
def hex_1496188 : String := "424440434109064109420706094043094109090944400643084109060A"
theorem cover_1496188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1496188)
  decide +kernel
#print axioms cover_1496188

def state_1496218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 162 else (if j.val < 4 then 205 else 119)))
def hex_1496218 : String := "4440064341420906064142094406094244050706404341420706420706414207440605420706434109420909410942074440060909"
theorem cover_1496218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1496218)
  decide +kernel
#print axioms cover_1496218

def state_1496271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 163 else (if j.val < 4 then 205 else 119)))
def hex_1496271 : String := "4406400643084142090642440640050806"
theorem cover_1496271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1496271)
  decide +kernel
#print axioms cover_1496271

def state_1496290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 118)))
def hex_1496290 : String := "40064341420A06060A"
theorem cover_1496290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1496290)
  decide +kernel
#print axioms cover_1496290
end Mub6.Numerical.CircleFullD0.Forest
