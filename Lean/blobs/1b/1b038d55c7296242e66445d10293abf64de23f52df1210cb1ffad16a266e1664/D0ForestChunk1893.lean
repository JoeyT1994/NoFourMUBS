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
def state_2327342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 23)))
def hex_2327342 : String := "41434044420808084442410743080807074008444208080843400844424108054108060808"
theorem cover_2327342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327342 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2327342)
  decide +kernel
#print axioms cover_2327342

def state_2327379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
def hex_2327379 : String := "434044420909420508444206060640444205414309050505444241434005060707414340440905064005444205414306050505430605420541434005050505"
theorem cover_2327379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_2327379)
  decide +kernel
#print axioms cover_2327379

def state_2327445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 10)))
def hex_2327445 : String := "404244090909424441430540090509414305404209094244050505430609440909"
theorem cover_2327445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2327445)
  decide +kernel
#print axioms cover_2327445

def state_2327479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
def hex_2327479 : String := "4244410A07410A090A"
theorem cover_2327479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2327479)
  decide +kernel
#print axioms cover_2327479

def state_2327490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 20)))
def hex_2327490 : String := "41434042090942080840424144070A070A4241080841080843094007420708"
theorem cover_2327490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2327490)
  decide +kernel
#print axioms cover_2327490

def state_2327523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 21)))
def hex_2327523 : String := "4042440A410A090A42444105430540090841430540420505054340090540094244054105090544050A"
theorem cover_2327523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327523 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2327523)
  decide +kernel
#print axioms cover_2327523

def state_2327565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 21)))
def hex_2327565 : String := "4244410A0A41430A060A0A"
theorem cover_2327565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2327565)
  decide +kernel
#print axioms cover_2327565
end Mub6.Numerical.CircleFullD0.Forest
