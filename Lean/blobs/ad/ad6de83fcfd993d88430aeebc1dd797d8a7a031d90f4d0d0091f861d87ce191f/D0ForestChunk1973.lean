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
def state_2554117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
def hex_2554117 : String := "4043420A054209054342064144400A060606420941444042090A09400542060A4440050905"
theorem cover_2554117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2554117)
  decide +kernel
#print axioms cover_2554117

def state_2554154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
def hex_2554154 : String := "40420A0A42430641060643410A064144400A430A0A0A44400543064206410A050A"
theorem cover_2554154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554154 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_2554154)
  decide +kernel
#print axioms cover_2554154

def state_2554190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_2554190 : String := "424344414209064209400609410A42090A4441064207064142090642094006094344060A06"
theorem cover_2554190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554190 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_2554190)
  decide +kernel
#print axioms cover_2554190

def state_2554228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
def hex_2554228 : String := "09"
theorem cover_2554228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2554228)
  decide +kernel
#print axioms cover_2554228

def state_2554230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 24)))
def hex_2554230 : String := "444140060540420906420943440541054006050641400A42090A4042430A44090A0A42094344410A400A090A444106400609410A400A42090A"
theorem cover_2554230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2554230)
  decide +kernel
#print axioms cover_2554230

def state_2554287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 24)))
def hex_2554287 : String := "4441064006420505414006094042434406410640060906064209434406410640060906"
theorem cover_2554287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2554287)
  decide +kernel
#print axioms cover_2554287

def state_2554323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_2554323 : String := "42430A410A44420A0A0A0A"
theorem cover_2554323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2554323)
  decide +kernel
#print axioms cover_2554323

def state_2554335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
def hex_2554335 : String := "434144090A444009090A414409400A094409400A09"
theorem cover_2554335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554335 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_2554335)
  decide +kernel
#print axioms cover_2554335

def state_2554357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_2554357 : String := "410A44400A42430A0A0A0A"
theorem cover_2554357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554357 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2554357)
  decide +kernel
#print axioms cover_2554357
end Mub6.Numerical.CircleFullD0.Forest
