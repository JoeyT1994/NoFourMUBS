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
def state_268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_268 : String := "40414243444205060744050A430944080942430705434406074405410905414243440507054306440540090542054344050605"
theorem cover_268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_268 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 51) (hex := hex_268)
  decide +kernel
#print axioms cover_268

def state_320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_320 : String := "404142434442050A054407420507430A4440410A07060A4243054407054344410A05054407410A05414243050743440A0544060A4205430507"
theorem cover_320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_320 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_320)
  decide +kernel
#print axioms cover_320

def state_377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_377 : String := "40414243440542050944080843444305090909424305440506434405060A414243050843440507440707420543054405400605"
theorem cover_377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 51) (hex := hex_377)
  decide +kernel
#print axioms cover_377

def state_431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_431 : String := "4041424307440505434405050542434440050507074309444207050541424344050505054243440A400705440A05434440420505050505"
theorem cover_431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_431 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_431)
  decide +kernel
#print axioms cover_431
end Mub6.Numerical.CircleFullD0.Forest
