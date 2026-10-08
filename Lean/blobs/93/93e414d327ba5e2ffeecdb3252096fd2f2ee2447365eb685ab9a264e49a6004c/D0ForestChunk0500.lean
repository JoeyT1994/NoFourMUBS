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
def state_1308742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 47)))
def hex_1308742 : String := "4240430844060843444142404305060540080542050541424008050808440641420606064008430808"
theorem cover_1308742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1308742)
  decide +kernel
#print axioms cover_1308742

def state_1308783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 23)))
def hex_1308783 : String := "444109064142400543440942410A06090509420606"
theorem cover_1308783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308783 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1308783)
  decide +kernel
#print axioms cover_1308783

def state_1308806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 46)))
def hex_1308806 : String := "414240430544094241080609054009430509424043050605400A05"
theorem cover_1308806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1308806)
  decide +kernel
#print axioms cover_1308806

def state_1308836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 47)))
def hex_1308836 : String := "4305444241404344084205090808400605410940430606054241404344420507070A4305084043050605414007430544090740434442050707440642060605"
theorem cover_1308836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1308836)
  decide +kernel
#print axioms cover_1308836

def state_1308899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 47)))
def hex_1308899 : String := "05"
theorem cover_1308899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308899 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1308899)
  decide +kernel
#print axioms cover_1308899

def state_1308900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 47)))
def hex_1308900 : String := "404344410742050707440941074240074305090743054441094205054142400705074205400705"
theorem cover_1308900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1308900)
  decide +kernel
#print axioms cover_1308900

def state_1308939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 47)))
def hex_1308939 : String := "42404305440641420540060505054043054441420606064142400605080605"
theorem cover_1308939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1308939)
  decide +kernel
#print axioms cover_1308939
end Mub6.Numerical.CircleFullD0.Forest
