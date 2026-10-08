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
def state_2575108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 37)))
def hex_2575108 : String := "41444243074008410707074243064006DC434006DC4008DC4442430640064107060706"
theorem cover_2575108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575108 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_2575108)
  decide +kernel
#print axioms cover_2575108

def state_2575143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 95 else 37)))
def hex_2575143 : String := "414442434007054041070741050507DC444243074041070741070707DC"
theorem cover_2575143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2575143)
  decide +kernel
#print axioms cover_2575143

def state_2575172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
def hex_2575172 : String := "4442434006074041070641440743054205070A43074007074206430640060A"
theorem cover_2575172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575172 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2575172)
  decide +kernel
#print axioms cover_2575172

def state_2575203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 19)))
def hex_2575203 : String := "4206430640064144420643064006DC0606"
theorem cover_2575203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2575203)
  decide +kernel
#print axioms cover_2575203

def state_2575221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
def hex_2575221 : String := "05"
theorem cover_2575221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2575221)
  decide +kernel
#print axioms cover_2575221

def state_2575223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 4)))
def hex_2575223 : String := "05"
theorem cover_2575223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2575223)
  decide +kernel
#print axioms cover_2575223

def state_2575225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
def hex_2575225 : String := "4442054305404106440642050605420543054044410A420543050641420843400A05084243050843404405050540440A0A0805"
theorem cover_2575225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2575225)
  decide +kernel
#print axioms cover_2575225

def state_2575277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
def hex_2575277 : String := "42054305404144074205430506444243054007050742430540410505054307404107070905"
theorem cover_2575277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_2575277)
  decide +kernel
#print axioms cover_2575277

def state_2575315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 9)))
def hex_2575315 : String := "430540410544050505"
theorem cover_2575315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2575315)
  decide +kernel
#print axioms cover_2575315

def state_2575325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 9)))
def hex_2575325 : String := "40410544050505"
theorem cover_2575325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575325 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2575325)
  decide +kernel
#print axioms cover_2575325
end Mub6.Numerical.CircleFullD0.Forest
