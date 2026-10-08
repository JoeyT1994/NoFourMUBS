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
def state_1513668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 60)))
def hex_1513668 : String := "4344400607404142090709410707444009074041090941074243070707"
theorem cover_1513668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1513668)
  decide +kernel
#print axioms cover_1513668

def state_1513697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
def hex_1513697 : String := "42434440060A4009414342440940090A09420A094309094405400941420505054344064006414209060844094009410909"
theorem cover_1513697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1513697)
  decide +kernel
#print axioms cover_1513697

def state_1513747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
def hex_1513747 : String := "42434440414307050505404143424407060742440506074342440A4041070A0707420A074143070643070A4405404142054307050505434407074407400707"
theorem cover_1513747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1513747)
  decide +kernel
#print axioms cover_1513747

def state_1513810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
def hex_1513810 : String := "42434405404143420A070A0A0A054308440540410742050707"
theorem cover_1513810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1513810)
  decide +kernel
#print axioms cover_1513810

def state_1513842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 176) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
def hex_1513842 : String := "434244404108094143050843424409050542080905054208444009414307080905"
theorem cover_1513842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513842 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1513842)
  decide +kernel
#print axioms cover_1513842

def state_1513875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
def hex_1513875 : String := "4342444009414309090940054105430509440905424440084108090844094009410909"
theorem cover_1513875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513875 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1513875)
  decide +kernel
#print axioms cover_1513875
end Mub6.Numerical.CircleFullD0.Forest
