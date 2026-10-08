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
def state_2307067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 92)))
def hex_2307067 : String := "4143074244400907070743424440410A060640410706060742444041430A080A0A404108080A44404107080707"
theorem cover_2307067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2307067)
  decide +kernel
#print axioms cover_2307067

def state_2307112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 93)))
def hex_2307112 : String := "40414307084342444005410705054440050705054107430742444008070507"
theorem cover_2307112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307112 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2307112)
  decide +kernel
#print axioms cover_2307112

def state_2307143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 46)))
def hex_2307143 : String := "43074440410742430708070707"
theorem cover_2307143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2307143)
  decide +kernel
#print axioms cover_2307143

def state_2307157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 46)))
def hex_2307157 : String := "43444041420643064406060606064440414342444005060544400841420808060808054143420606420A4440080A080640054143060805"
theorem cover_2307157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_2307157)
  decide +kernel
#print axioms cover_2307157

def state_2307213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 46)))
def hex_2307213 : String := "44404142430644404142430607070606400806074206060640414206070606"
theorem cover_2307213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307213 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_2307213)
  decide +kernel
#print axioms cover_2307213

def state_2307244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 46)))
def hex_2307244 : String := "4440414243444008410808080843080842080841424344404107060606444008410708084307074243060843060840410805414243060707420608"
theorem cover_2307244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2307244)
  decide +kernel
#print axioms cover_2307244
end Mub6.Numerical.CircleFullD0.Forest
