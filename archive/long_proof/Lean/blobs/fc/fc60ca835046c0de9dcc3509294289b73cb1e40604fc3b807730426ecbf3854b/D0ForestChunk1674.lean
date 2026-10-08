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
def state_2274992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 89 else 117)))
def hex_2274992 : String := "404142434440050540090544400606060942430A06094142430544400505060542430A0643440541050944410509410606"
theorem cover_2274992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274992 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 49) (hex := hex_2274992)
  decide +kernel
#print axioms cover_2274992

def state_2275041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 93 else (if j.val < 4 then 44 else 58)))
def hex_2275041 : String := "4305444009054009410509"
theorem cover_2275041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275041 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2275041)
  decide +kernel
#print axioms cover_2275041

def state_2275052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 58)))
def hex_2275052 : String := "410542434405410540420A050544410540420A050541404243050505054042430A06430544054105064243050605430544054105400505"
theorem cover_2275052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275052 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_2275052)
  decide +kernel
#print axioms cover_2275052

def state_2275109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 54) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
def hex_2275109 : String := "424340440508054044410542080508444105420805084305400505"
theorem cover_2275109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2275109)
  decide +kernel
#print axioms cover_2275109

def state_2275138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 88 else 59)))
def hex_2275138 : String := "4041444243054007440508054207094407074144424305050542084305054442430A0A430541050A4207430741400744050607"
theorem cover_2275138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2275138)
  decide +kernel
#print axioms cover_2275138

def state_2275190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 80 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 89 else 59)))
def hex_2275190 : String := "414442434006060609420609444243070609420609"
theorem cover_2275190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275190 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_2275190)
  decide +kernel
#print axioms cover_2275190
end Mub6.Numerical.CircleFullD0.Forest
