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
def state_958521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 27)))
def hex_958521 : String := "42444041430A42050A43424440414205084208080A0A44090A42444005410543080505444008090A410A430A424407050A0A4440410A43094244090A090A0A"
theorem cover_958521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_958521)
  decide +kernel
#print axioms cover_958521

def state_958585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 27)))
def hex_958585 : String := "424440414309424409404109090909090940410A444309424041060709090A0A44090A"
theorem cover_958585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_958585)
  decide +kernel
#print axioms cover_958585

def state_958624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
def hex_958624 : String := "434244094041420A0A424344090A0509410A0909424440084108064005410543420509054409404143420509054309420508410A09"
theorem cover_958624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958624 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_958624)
  decide +kernel
#print axioms cover_958624

def state_958677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
def hex_958677 : String := "434244094041424309440805090909094244400806404143420544080505434244060509420508414342440605090643090644094041090909"
theorem cover_958677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958677 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_958677)
  decide +kernel
#print axioms cover_958677

def state_958734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
def hex_958734 : String := "41430942440640410543090506094309420609"
theorem cover_958734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_958734)
  decide +kernel
#print axioms cover_958734

def state_958755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
def hex_958755 : String := "4344420A0A0A44420540050A05"
theorem cover_958755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958755 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_958755)
  decide +kernel
#print axioms cover_958755
end Mub6.Numerical.CircleFullD0.Forest
