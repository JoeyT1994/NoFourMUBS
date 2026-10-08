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
def state_2321546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
def hex_2321546 : String := "434044074142050505444142074306070641420643060A0640074407410A05"
theorem cover_2321546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321546 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2321546)
  decide +kernel
#print axioms cover_2321546

def state_2321585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
def hex_2321585 : String := "444241434009440909400644060609410A0942410808410808"
theorem cover_2321585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2321585)
  decide +kernel
#print axioms cover_2321585

def state_2321613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 112) else (if j.val < 3 then 84 else (if j.val < 4 then 60 else 88)))
def hex_2321613 : String := "4340444205054241050909440505404442410509410509424106084106084442050542410543400905400844050541054305400605"
theorem cover_2321613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321613 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2321613)
  decide +kernel
#print axioms cover_2321613

def state_2321666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 113) else (if j.val < 3 then 84 else (if j.val < 4 then 60 else 88)))
def hex_2321666 : String := "43094009440942414309090909"
theorem cover_2321666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2321666)
  decide +kernel
#print axioms cover_2321666

def state_2321679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 85 else (if j.val < 4 then 60 else 88)))
def hex_2321679 : String := "41434044050505404442050542060644050543094009440909"
theorem cover_2321679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_2321679)
  decide +kernel
#print axioms cover_2321679

def state_2321705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 84 else (if j.val < 4 then 60 else 89)))
def hex_2321705 : String := "414340444208080844424105430508050740084442410808410708084340440908444209090840084442080808"
theorem cover_2321705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2321705)
  decide +kernel
#print axioms cover_2321705

def state_2321750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 85 else (if j.val < 4 then 60 else 89)))
def hex_2321750 : String := "41430740080743400844090740084442080808"
theorem cover_2321750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2321750)
  decide +kernel
#print axioms cover_2321750

def state_2321770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
def hex_2321770 : String := "44424106430706410643080608"
theorem cover_2321770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2321770)
  decide +kernel
#print axioms cover_2321770
end Mub6.Numerical.CircleFullD0.Forest
