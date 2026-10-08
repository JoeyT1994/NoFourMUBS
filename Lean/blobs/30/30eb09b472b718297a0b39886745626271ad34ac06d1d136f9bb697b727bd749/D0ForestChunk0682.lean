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
def state_1464447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1464447 : String := "414243444209440A090909434444054005410505400907444344054005414209050544060909424344060906434441050507440609"
theorem cover_1464447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464447 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1464447)
  decide +kernel
#print axioms cover_1464447

def state_1464502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_1464502 : String := "434440420707074009074440420609420A43070940090A"
theorem cover_1464502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1464502)
  decide +kernel
#print axioms cover_1464502

def state_1464525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_1464525 : String := "43444044050707074440434441420A0505414207070744414206434440050A080806094344070744414209404307090709410A094009430709"
theorem cover_1464525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1464525)
  decide +kernel
#print axioms cover_1464525

def state_1464582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1464582 : String := "4243440807444006090943440707444041430506064143070943050909"
theorem cover_1464582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1464582)
  decide +kernel
#print axioms cover_1464582

def state_1464615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
def hex_1464615 : String := "43444243060A430740410A064144050A44070606440A0A"
theorem cover_1464615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1464615)
  decide +kernel
#print axioms cover_1464615

def state_1464639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
def hex_1464639 : String := "44074344400641070606444007410942060709"
theorem cover_1464639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1464639)
  decide +kernel
#print axioms cover_1464639

def state_1464658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_1464658 : String := "444041420A054243070A0741420505424344054041050741054205050A43070544400A410A420A43440708080A"
theorem cover_1464658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464658 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1464658)
  decide +kernel
#print axioms cover_1464658
end Mub6.Numerical.CircleFullD0.Forest
