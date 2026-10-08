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
def state_1332270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 46 else 50)))
def hex_1332270 : String := "4344404108420543090807074440410842054308054142430708430708420543440607444041080506400807400807"
theorem cover_1332270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332270 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1332270)
  decide +kernel
#print axioms cover_1332270

def state_1332317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 61 else (if j.val < 4 then 46 else 50)))
def hex_1332317 : String := "4344404107090707444041084243080808414243070805424344060644404108060640080643064406400806400807"
theorem cover_1332317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332317 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1332317)
  decide +kernel
#print axioms cover_1332317

def state_1332364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 50)))
def hex_1332364 : String := "4243444005060505434406400A0644404142430905090506404142054309440908054142430744400506054306440607420506"
theorem cover_1332364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1332364)
  decide +kernel
#print axioms cover_1332364

def state_1332415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 51)))
def hex_1332415 : String := "41074205430740054441070507"
theorem cover_1332415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332415 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1332415)
  decide +kernel
#print axioms cover_1332415

def state_1332429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 25)))
def hex_1332429 : String := "444108420543400544070505410805"
theorem cover_1332429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1332429)
  decide +kernel
#print axioms cover_1332429

def state_1332447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 47 else 50)))
def hex_1332447 : String := "434440410805414208084205434440410805410A4205054005410805440A40050940084108420543444005070508444008410809400609"
theorem cover_1332447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332447 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1332447)
  decide +kernel
#print axioms cover_1332447
end Mub6.Numerical.CircleFullD0.Forest
