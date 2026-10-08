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
def state_2306333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
def hex_2306333 : String := "440541424305404405410543050A050542430640440A0A0A430640444105420A05414243050A07420643060A44050A"
theorem cover_2306333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306333 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2306333)
  decide +kernel
#print axioms cover_2306333

def state_2306382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
def hex_2306382 : String := "4105424305404405410542430509050505"
theorem cover_2306382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306382 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2306382)
  decide +kernel
#print axioms cover_2306382

def state_2306400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
def hex_2306400 : String := "42430544050707"
theorem cover_2306400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306400 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2306400)
  decide +kernel
#print axioms cover_2306400

def state_2306409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 54 else 45)))
def hex_2306409 : String := "444041054243050905054041074243064440094105064008060707"
theorem cover_2306409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306409 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2306409)
  decide +kernel
#print axioms cover_2306409

def state_2306438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 90)))
def hex_2306438 : String := "4142434405404105420805054440060540084105084305440507424344094009094409084344054008054440080908"
theorem cover_2306438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306438 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2306438)
  decide +kernel
#print axioms cover_2306438

def state_2306485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 90)))
def hex_2306485 : String := "410542430544054041050905430544054041050805"
theorem cover_2306485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2306485)
  decide +kernel
#print axioms cover_2306485

def state_2306506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 91)))
def hex_2306506 : String := "404142434440410708070708074243444008410808080843080841074243444041050605074440084107420807400807430707"
theorem cover_2306506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306506 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2306506)
  decide +kernel
#print axioms cover_2306506

def state_2306557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 39 else (if j.val < 4 then 27 else 45)))
def hex_2306557 : String := "4307444041054243074440080508070507"
theorem cover_2306557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306557 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2306557)
  decide +kernel
#print axioms cover_2306557
end Mub6.Numerical.CircleFullD0.Forest
