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
def state_1643475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 80)))
def hex_1643475 : String := "4143404442094108430508420541430540070505054044084208080943054044090505"
theorem cover_1643475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643475 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1643475)
  decide +kernel
#print axioms cover_1643475

def state_1643510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 119 else (if j.val < 4 then 103 else 80)))
def hex_1643510 : String := "4143404442410706060744420941070505400644094209410906434044060505400609"
theorem cover_1643510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643510 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1643510)
  decide +kernel
#print axioms cover_1643510

def state_1643545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 81)))
def hex_1643545 : String := "424143054042444143050805054441434008050805050505414340440705054044424143400605060606424143050A0506A043054044060505"
theorem cover_1643545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643545 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1643545)
  decide +kernel
#print axioms cover_1643545

def state_1643602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
def hex_1643602 : String := "444209414305090505"
theorem cover_1643602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643602 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1643602)
  decide +kernel
#print axioms cover_1643602

def state_1643613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 41)))
def hex_1643613 : String := "4042050905"
theorem cover_1643613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643613 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1643613)
  decide +kernel
#print axioms cover_1643613

def state_1643621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 82)))
def hex_1643621 : String := "4143404206090540424441064306400806064441430908434007A04008A009A043054042444143054042080A050505444143400705400AA0050505"
theorem cover_1643621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643621 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1643621)
  decide +kernel
#print axioms cover_1643621

def state_1643680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 83)))
def hex_1643680 : String := "41430540090505"
theorem cover_1643680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1643680)
  decide +kernel
#print axioms cover_1643680
end Mub6.Numerical.CircleFullD0.Forest
