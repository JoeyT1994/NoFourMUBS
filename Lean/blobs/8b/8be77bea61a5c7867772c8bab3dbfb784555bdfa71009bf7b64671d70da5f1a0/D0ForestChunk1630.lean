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
def state_2264425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2264425 : String := "414440084309094009434241440909090942414406060609440809"
theorem cover_2264425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2264425)
  decide +kernel
#print axioms cover_2264425

def state_2264454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 54)))
def hex_2264454 : String := "424140440543054241050A05054044080A44050A410505"
theorem cover_2264454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2264454)
  decide +kernel
#print axioms cover_2264454

def state_2264479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 54)))
def hex_2264479 : String := "4044084342414044430508430A4206410506440543050740080A41050842414044080607400808410708440743424105400A070542410740060607"
theorem cover_2264479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_2264479)
  decide +kernel
#print axioms cover_2264479

def state_2264538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 107) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 54)))
def hex_2264538 : String := "4008440843420A0808"
theorem cover_2264538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264538 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2264538)
  decide +kernel
#print axioms cover_2264538

def state_2264547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 54)))
def hex_2264547 : String := "4140080708"
theorem cover_2264547 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264547 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2264547)
  decide +kernel
#print axioms cover_2264547

def state_2264556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 74 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
def hex_2264556 : String := "44434241050A05424140440A430A064405060A4105400A44050A43424140440A06080A4105400A0A42410606414044430506064405064044060606"
theorem cover_2264556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264556 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2264556)
  decide +kernel
#print axioms cover_2264556

def state_2264615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 75 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
def hex_2264615 : String := "44430542414044050505400A0A05434241080A054206414044050605400606"
theorem cover_2264615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2264615)
  decide +kernel
#print axioms cover_2264615

def state_2264646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 107) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
def hex_2264646 : String := "40440A430A42060A44430A0A430A4206410606"
theorem cover_2264646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264646 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2264646)
  decide +kernel
#print axioms cover_2264646
end Mub6.Numerical.CircleFullD0.Forest
