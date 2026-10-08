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
def state_1032071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 207 else (if j.val < 4 then 150 else 125)))
def hex_1032071 : String := "444041424307440A07074243444007410705070A07410842434405404108050544400A084041080A0843444007050744400708074041070741084243080807"
theorem cover_1032071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032071 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1032071)
  decide +kernel
#print axioms cover_1032071

def state_1032134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 125)))
def hex_1032134 : String := "4440414209070A414208084243440A400A080A4344400706070A404109420907410842430808430707"
theorem cover_1032134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1032134)
  decide +kernel
#print axioms cover_1032134

def state_1032175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
def hex_1032175 : String := "4108424344404108420505050844404108420606060843444041084208080808444041084206060608"
theorem cover_1032175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032175 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1032175)
  decide +kernel
#print axioms cover_1032175

def state_1032217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
def hex_1032217 : String := "410942094306444009410942090709"
theorem cover_1032217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1032217)
  decide +kernel
#print axioms cover_1032217

def state_1032233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
def hex_1032233 : String := "420808"
theorem cover_1032233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1032233)
  decide +kernel
#print axioms cover_1032233

def state_1032237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 63)))
def hex_1032237 : String := "43444041094209430609410842050840060809"
theorem cover_1032237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032237 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1032237)
  decide +kernel
#print axioms cover_1032237

def state_1032256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 63)))
def hex_1032256 : String := "434440414206064243064440060806064108420808400608444041094209434440070840060844400708094108420808400908"
theorem cover_1032256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1032256)
  decide +kernel
#print axioms cover_1032256

def state_1032309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 36 else 31)))
def hex_1032309 : String := "44404205414305440506050540064205410505"
theorem cover_1032309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032309 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1032309)
  decide +kernel
#print axioms cover_1032309
end Mub6.Numerical.CircleFullD0.Forest
