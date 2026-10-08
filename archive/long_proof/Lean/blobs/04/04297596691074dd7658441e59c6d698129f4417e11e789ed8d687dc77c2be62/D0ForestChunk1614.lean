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
def state_2260512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 93 else 52)))
def hex_2260512 : String := "414442404341440609080843410744070707084240434109050509404341070808074408420508"
theorem cover_2260512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260512 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2260512)
  decide +kernel
#print axioms cover_2260512

def state_2260551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 52)))
def hex_2260551 : String := "43414407420907444240430A44084107080707424043090909404341070A410708074107444240434408410706080707420907"
theorem cover_2260551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260551 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2260551)
  decide +kernel
#print axioms cover_2260551

def state_2260605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 53)))
def hex_2260605 : String := "42094440434142094406094209444008434107080840434109090909414209440707420944084043090509434107420944070741070940434109090909"
theorem cover_2260605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2260605)
  decide +kernel
#print axioms cover_2260605

def state_2260666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 53)))
def hex_2260666 : String := "4244400506054440434142440A05440840080A0A4142050805434142094440080709420A0A4142094408094205084043414205444005090505054341090605"
theorem cover_2260666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2260666)
  decide +kernel
#print axioms cover_2260666

def state_2260729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 93 else 53)))
def hex_2260729 : String := "41420944404341094205440705050709420544400543414205440705050505"
theorem cover_2260729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2260729)
  decide +kernel
#print axioms cover_2260729
end Mub6.Numerical.CircleFullD0.Forest
