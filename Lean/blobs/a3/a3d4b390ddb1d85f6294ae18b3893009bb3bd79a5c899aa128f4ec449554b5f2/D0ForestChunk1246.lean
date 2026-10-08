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
def state_1599479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 201)))
def hex_1599479 : String := "424043414442050905054144420A4009094205400A05440A05054043410944424009050942054007054109444240099F0942404305070540079F9F"
theorem cover_1599479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1599479)
  decide +kernel
#print axioms cover_1599479

def state_1599539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 119 else 200)))
def hex_1599539 : String := "4240414344090A0A0A414344420609420A4009410905440A0A4344064205400A050A40410943440942400909094409420A099F"
theorem cover_1599539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599539 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1599539)
  decide +kernel
#print axioms cover_1599539

def state_1599590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 119 else 201)))
def hex_1599590 : String := "4240410A0A4143444205400A05050A05404143440942400909094409064344420A09420A40079F44420A4006090A9F"
theorem cover_1599590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599590 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1599590)
  decide +kernel
#print axioms cover_1599590

def state_1599638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
def hex_1599638 : String := "434442404106060608084442404109434406420507440742074009070740090842404108430544420508050508"
theorem cover_1599638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599638 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1599638)
  decide +kernel
#print axioms cover_1599638

def state_1599683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
def hex_1599683 : String := "43440642059F4442404143064442064041060606420540410A050506059F42059F"
theorem cover_1599683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599683 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_1599683)
  decide +kernel
#print axioms cover_1599683

def state_1599717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 101)))
def hex_1599717 : String := "40414305444205400A05050505"
theorem cover_1599717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599717 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1599717)
  decide +kernel
#print axioms cover_1599717
end Mub6.Numerical.CircleFullD0.Forest
