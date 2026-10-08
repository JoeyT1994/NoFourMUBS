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
def state_2560797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 24)))
def hex_2560797 : String := "414440080540424341440840424341060806064205054408400808084341060806424341050805434105080844084042080808"
theorem cover_2560797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_2560797)
  decide +kernel
#print axioms cover_2560797

def state_2560848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 24)))
def hex_2560848 : String := "434144400605404243090606420707444042434106080606420808404243410944400908094109080942434107440707080941440640064208064408400608"
theorem cover_2560848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2560848)
  decide +kernel
#print axioms cover_2560848

def state_2560915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
def hex_2560915 : String := "444243410A44400A07074144404207070707444042430A41440707444008070743074107444005070507400A07430A4144400A07074440090707420A09"
theorem cover_2560915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560915 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_2560915)
  decide +kernel
#print axioms cover_2560915

def state_2560976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
def hex_2560976 : String := "4442070707"
theorem cover_2560976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2560976)
  decide +kernel
#print axioms cover_2560976

def state_2560984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 50)))
def hex_2560984 : String := "43414440424306410A050A0740050644400506054144404243414440050705054144080505430505420707400507444005420643050505"
theorem cover_2560984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560984 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2560984)
  decide +kernel
#print axioms cover_2560984
end Mub6.Numerical.CircleFullD0.Forest
