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
def state_1032328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 37 else 31)))
def hex_1032328 : String := "4440424107074143440A400642054109050A08420741070740420941094306440809420741434407400607094344054006054407400907"
theorem cover_1032328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1032328)
  decide +kernel
#print axioms cover_1032328

def state_1032384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 31)))
def hex_1032384 : String := "44404142430544400605064306444006410505064208430508414205430544054041050505054006414243054405064306444006050642054305440506"
theorem cover_1032384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032384 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1032384)
  decide +kernel
#print axioms cover_1032384

def state_1032449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 102) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 62)))
def hex_1032449 : String := "4344400841420543050A08400641424305094306440A0642430508430508440A400A410A0A"
theorem cover_1032449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1032449)
  decide +kernel
#print axioms cover_1032449

def state_1032487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 62)))
def hex_1032487 : String := "44404142080708414243050A43440506440A40074107074208084006414243064440064106060643060742430608430607"
theorem cover_1032487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032487 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1032487)
  decide +kernel
#print axioms cover_1032487

def state_1032536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 62)))
def hex_1032536 : String := "44400A410A0A40410A08414243440A4006414206060A0A430707420A430708"
theorem cover_1032536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1032536)
  decide +kernel
#print axioms cover_1032536

def state_1032567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
def hex_1032567 : String := "42430808430808"
theorem cover_1032567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032567 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1032567)
  decide +kernel
#print axioms cover_1032567
end Mub6.Numerical.CircleFullD0.Forest
