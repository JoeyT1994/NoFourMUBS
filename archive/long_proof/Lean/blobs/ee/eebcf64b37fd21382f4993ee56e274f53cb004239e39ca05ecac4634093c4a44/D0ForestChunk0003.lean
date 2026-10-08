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
def state_486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_486 : String := "404142434441050606440508430805424306094344070644050841424344050A05054243440706440540060543440540060505"
theorem cover_486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_486 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 51) (hex := hex_486)
  decide +kernel
#print axioms cover_486

def state_538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_538 : String := "404142434441050705440606430544090542430A08434407054408420805414243050605424344070544060643054440080505"
theorem cover_538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_538 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 51) (hex := hex_538)
  decide +kernel
#print axioms cover_538

def state_589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_589 : String := "4041424309440A07430544050A42434443050A09440A400A09434405420A050A4142430509054243440509444009050943054405400A05"
theorem cover_589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_589 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 55) (hex := hex_589)
  decide +kernel
#print axioms cover_589

def state_646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_646 : String := "4041424344410509050543440606444105060542434409090943444009060A4409094142054306054243444009050505434406064440090505"
theorem cover_646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_646 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 57) (hex := hex_646)
  decide +kernel
#print axioms cover_646
end Mub6.Numerical.CircleFullD0.Forest
