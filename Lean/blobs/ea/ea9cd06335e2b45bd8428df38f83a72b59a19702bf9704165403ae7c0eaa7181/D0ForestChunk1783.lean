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
def state_2301067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 46)))
def hex_2301067 : String := "434244430640090606444340090640084142060906430640080642444005414342060905050544400841434244090808080808"
theorem cover_2301067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2301067)
  decide +kernel
#print axioms cover_2301067

def state_2301120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 46)))
def hex_2301120 : String := "42444041430642060706060607"
theorem cover_2301120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2301120)
  decide +kernel
#print axioms cover_2301120

def state_2301138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 92)))
def hex_2301138 : String := "424441074043064206070641070607"
theorem cover_2301138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2301138)
  decide +kernel
#print axioms cover_2301138

def state_2301154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 72 else (if j.val < 4 then 107 else 92)))
def hex_2301154 : String := "44414043070A074043424441400A430607400A0641400A06064441070A074244410A0A0A0A43420607C44140430707074043424441070505070A430607"
theorem cover_2301154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301154 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2301154)
  decide +kernel
#print axioms cover_2301154

def state_2301215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 73 else (if j.val < 4 then 107 else 92)))
def hex_2301215 : String := "444107400A0707"
theorem cover_2301215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2301215)
  decide +kernel
#print axioms cover_2301215

def state_2301223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 92)))
def hex_2301223 : String := "42064440414306420607060606"
theorem cover_2301223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2301223)
  decide +kernel
#print axioms cover_2301223

def state_2301237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 107 else 92)))
def hex_2301237 : String := "444041434206444140090606064244090544410A0505430605414306C40640414305050506"
theorem cover_2301237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301237 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2301237)
  decide +kernel
#print axioms cover_2301237

def state_2301274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 107 else 92)))
def hex_2301274 : String := "444041434244410A06410706070A430908414307C44306420606404143070805410706"
theorem cover_2301274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2301274)
  decide +kernel
#print axioms cover_2301274

def state_2301309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 92)))
def hex_2301309 : String := "414307074306420644404107060606"
theorem cover_2301309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301309 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2301309)
  decide +kernel
#print axioms cover_2301309
end Mub6.Numerical.CircleFullD0.Forest
