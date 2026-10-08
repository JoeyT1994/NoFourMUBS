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
def state_2241979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 16)))
def hex_2241979 : String := "434442404143080A09414305440508430844090808084442400941434406070609094240410709410743080708"
theorem cover_2241979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2241979)
  decide +kernel
#print axioms cover_2241979

def state_2242024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
def hex_2242024 : String := "4243444140420509420A430A44094140090A0940050A4140050A054441400542050905054344090809"
theorem cover_2242024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_2242024)
  decide +kernel
#print axioms cover_2242024

def state_2242067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 16)))
def hex_2242067 : String := "4344404142430906430506420A430A06064041420944430807070A0A4406404107420A434406070606"
theorem cover_2242067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2242067)
  decide +kernel
#print axioms cover_2242067

def state_2242108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 16)))
def hex_2242108 : String := "4344404241054305060505084406404241074308060706"
theorem cover_2242108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242108 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2242108)
  decide +kernel
#print axioms cover_2242108

def state_2242131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
def hex_2242131 : String := "42430A44060A4344404142430806080906084406404142430806080906"
theorem cover_2242131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242131 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2242131)
  decide +kernel
#print axioms cover_2242131

def state_2242160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 17)))
def hex_2242160 : String := "4041424443404107054107420508400507434005070544430807074205440808414244434041070A090707440807420A08"
theorem cover_2242160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242160 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2242160)
  decide +kernel
#print axioms cover_2242160
end Mub6.Numerical.CircleFullD0.Forest
