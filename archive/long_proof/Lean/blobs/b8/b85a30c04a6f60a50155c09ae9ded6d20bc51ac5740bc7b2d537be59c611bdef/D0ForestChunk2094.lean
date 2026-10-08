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
def state_2583080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 40) else (if j.val < 3 then 45 else (if j.val < 4 then 99 else 32)))
def hex_2583080 : String := "424041444342084007060808444342080A0A4342080A0808404144064307060A41064406430606"
theorem cover_2583080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2583080)
  decide +kernel
#print axioms cover_2583080

def state_2583119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 40) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 33)))
def hex_2583119 : String := "4342404105444305080805404144430742400705074342050742084007080A41054443054205070842084041444342080708080A410808"
theorem cover_2583119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583119 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2583119)
  decide +kernel
#print axioms cover_2583119

def state_2583174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 41) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
def hex_2583174 : String := "444342400A0A0A0A4342400A0A0A42400A080A"
theorem cover_2583174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_2583174)
  decide +kernel
#print axioms cover_2583174

def state_2583193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 20) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
def hex_2583193 : String := "414443054205060844434205400A054208400A06434205400A0508"
theorem cover_2583193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_2583193)
  decide +kernel
#print axioms cover_2583193

def state_2583221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 17)))
def hex_2583221 : String := "42404105050540414443054205404105050543054205404105050544430642060A0605"
theorem cover_2583221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2583221)
  decide +kernel
#print axioms cover_2583221

def state_2583256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 17)))
def hex_2583256 : String := "42084041444342084041080A0808084443424006080A42080A4342060A08410808"
theorem cover_2583256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2583256)
  decide +kernel
#print axioms cover_2583256

def state_2583289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
def hex_2583289 : String := "44434240064105060A424006410806400A0A43420640060A42400608400A41440A080A"
theorem cover_2583289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_2583289)
  decide +kernel
#print axioms cover_2583289
end Mub6.Numerical.CircleFullD0.Forest
