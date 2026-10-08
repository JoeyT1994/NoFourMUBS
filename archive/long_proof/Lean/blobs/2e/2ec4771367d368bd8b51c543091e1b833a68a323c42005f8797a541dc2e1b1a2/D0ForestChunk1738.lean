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
def state_2290304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 46)))
def hex_2290304 : String := "4342400A07070A"
theorem cover_2290304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2290304)
  decide +kernel
#print axioms cover_2290304

def state_2290313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 50 else 46)))
def hex_2290313 : String := "404443414008084042440943080A0A08410A400A42440A0A0A434140080840424443080A43080A0A08410A0A440808"
theorem cover_2290313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2290313)
  decide +kernel
#print axioms cover_2290313

def state_2290360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 50 else 46)))
def hex_2290360 : String := "404443410742400A05070A43410742400A07070A07"
theorem cover_2290360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290360 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2290360)
  decide +kernel
#print axioms cover_2290360

def state_2290381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 46)))
def hex_2290381 : String := "42400A444143080A43424044080808400A0742400A080A4143070A4342400A07400A070A400A44410743070A07"
theorem cover_2290381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290381 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2290381)
  decide +kernel
#print axioms cover_2290381

def state_2290427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 47)))
def hex_2290427 : String := "43070A"
theorem cover_2290427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2290427)
  decide +kernel
#print axioms cover_2290427

def state_2290431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 47)))
def hex_2290431 : String := "42404443410840424443080A080A080A4341084005060A08404443410742400A07070A43070A07"
theorem cover_2290431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290431 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_2290431)
  decide +kernel
#print axioms cover_2290431

def state_2290470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 47)))
def hex_2290470 : String := "42400A4441074342400A06070A410743424005060705400A07"
theorem cover_2290470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290470 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2290470)
  decide +kernel
#print axioms cover_2290470

def state_2290495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 23)))
def hex_2290495 : String := "44410743070A07"
theorem cover_2290495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290495 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2290495)
  decide +kernel
#print axioms cover_2290495

def state_2290502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
def hex_2290502 : String := "42444107430740420807070707"
theorem cover_2290502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2290502)
  decide +kernel
#print axioms cover_2290502

def state_2290518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
def hex_2290518 : String := "404344054241054305060606430505"
theorem cover_2290518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2290518 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2290518)
  decide +kernel
#print axioms cover_2290518
end Mub6.Numerical.CircleFullD0.Forest
