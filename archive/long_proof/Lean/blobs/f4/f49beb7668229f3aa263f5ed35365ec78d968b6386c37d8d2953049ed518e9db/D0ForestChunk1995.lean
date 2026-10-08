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
def state_2559377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 113 else (if j.val < 4 then 59 else 98)))
def hex_2559377 : String := "434144400A07074440420A0A420607400A0641444042430A0A0A420707400A0744404243410A0508430A084243070843070840420505420607"
theorem cover_2559377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2559377)
  decide +kernel
#print axioms cover_2559377

def state_2559434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 98)))
def hex_2559434 : String := "4206430707"
theorem cover_2559434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559434 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2559434)
  decide +kernel
#print axioms cover_2559434

def state_2559439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 99)))
def hex_2559439 : String := "40424306410606430A0A06"
theorem cover_2559439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559439 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2559439)
  decide +kernel
#print axioms cover_2559439

def state_2559450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 49)))
def hex_2559450 : String := "444042430609434144400506060641444005420808400506440505064042060506"
theorem cover_2559450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559450 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2559450)
  decide +kernel
#print axioms cover_2559450

def state_2559484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 49)))
def hex_2559484 : String := "4144404243070A0A07400A07444042430641444005060505430A410A05420607400A06"
theorem cover_2559484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2559484)
  decide +kernel
#print axioms cover_2559484

def state_2559520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 49)))
def hex_2559520 : String := "44404243410A44400A070A4144400A0707444042430A080A420707400507430A41094440060709420707400A07"
theorem cover_2559520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2559520)
  decide +kernel
#print axioms cover_2559520

def state_2559565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 49)))
def hex_2559565 : String := "444042434144400542430607070505414440054208080505434144400507050541444005080505424341070641440707440806430741074408074005420607"
theorem cover_2559565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2559565)
  decide +kernel
#print axioms cover_2559565
end Mub6.Numerical.CircleFullD0.Forest
