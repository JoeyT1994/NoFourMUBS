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
def state_2324457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 89)))
def hex_2324457 : String := "424143400844420808080843400844420808080841434008444208070708434008444208080808"
theorem cover_2324457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324457 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_2324457)
  decide +kernel
#print axioms cover_2324457

def state_2324502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 176)))
def hex_2324502 : String := "42414305404405420A0505434044090944050A40440742074143050A070A4105434009054044094209094405420505"
theorem cover_2324502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2324502)
  decide +kernel
#print axioms cover_2324502

def state_2324550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 172 else (if j.val < 4 then 124 else 177)))
def hex_2324550 : String := "41434044420505420A05054044420A410543050A420A4105080A434044420A09420A4143090806440A0A4044420A414340090A0A094208080A"
theorem cover_2324550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2324550)
  decide +kernel
#print axioms cover_2324550

def state_2324607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 173 else (if j.val < 4 then 124 else 177)))
def hex_2324607 : String := "4143404405050540444205054241050805054340440942090744054206054044424143094008440505090942410808410708444241050A0542410A0A07"
theorem cover_2324607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324607 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2324607)
  decide +kernel
#print axioms cover_2324607

def state_2324668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
def hex_2324668 : String := "444241050A05420A4105430540440542050505"
theorem cover_2324668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2324668)
  decide +kernel
#print axioms cover_2324668

def state_2324690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 172 else (if j.val < 4 then 125 else 176)))
def hex_2324690 : String := "41434044420705420A41050A0A4044070A0A4340070A07"
theorem cover_2324690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2324690)
  decide +kernel
#print axioms cover_2324690
end Mub6.Numerical.CircleFullD0.Forest
