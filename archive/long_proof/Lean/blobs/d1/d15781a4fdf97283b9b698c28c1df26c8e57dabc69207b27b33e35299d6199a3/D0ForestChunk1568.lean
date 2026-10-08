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
def state_2249665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 91 else 53)))
def hex_2249665 : String := "41420944060942444043090909094406404341420806420906410942094406094341080909"
theorem cover_2249665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2249665)
  decide +kernel
#print axioms cover_2249665

def state_2249702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 26)))
def hex_2249702 : String := "4406400643064106424406400643064106424406090606"
theorem cover_2249702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_2249702)
  decide +kernel
#print axioms cover_2249702

def state_2249727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
def hex_2249727 : String := "434244400808084406400808424440410843074207440607410843080808440640410843420744060742084406084108430808"
theorem cover_2249727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2249727)
  decide +kernel
#print axioms cover_2249727

def state_2249779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 27)))
def hex_2249779 : String := "420744400741060707"
theorem cover_2249779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249779 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2249779)
  decide +kernel
#print axioms cover_2249779

def state_2249789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 27)))
def hex_2249789 : String := "44400743074142074440074307410807070707"
theorem cover_2249789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_2249789)
  decide +kernel
#print axioms cover_2249789

def state_2249809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 54)))
def hex_2249809 : String := "4043410607414244060706074341424406070642070641424406400743410607410842074406070642440707440640074307410607"
theorem cover_2249809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_2249809)
  decide +kernel
#print axioms cover_2249809
end Mub6.Numerical.CircleFullD0.Forest
