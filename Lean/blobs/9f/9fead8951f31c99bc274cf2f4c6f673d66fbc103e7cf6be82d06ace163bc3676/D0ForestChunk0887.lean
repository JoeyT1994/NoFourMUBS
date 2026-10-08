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
def state_1513429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 120)))
def hex_1513429 : String := "40414309090941434244054041070505074205054342050705"
theorem cover_1513429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1513429)
  decide +kernel
#print axioms cover_1513429

def state_1513455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
def hex_1513455 : String := "4143424409400941434209074208090944094009074244094008410809094342090909"
theorem cover_1513455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1513455)
  decide +kernel
#print axioms cover_1513455

def state_1513492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 84 else (if j.val < 4 then 212 else 121)))
def hex_1513492 : String := "42444041430707430707410707404143424407060742440706074342440740090607424409400906074143070643070707"
theorem cover_1513492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513492 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1513492)
  decide +kernel
#print axioms cover_1513492

def state_1513541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 84 else (if j.val < 4 then 213 else 121)))
def hex_1513541 : String := "4244404143070505054041434206070643424405060742050941064306064407400707"
theorem cover_1513541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513541 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1513541)
  decide +kernel
#print axioms cover_1513541

def state_1513576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
def hex_1513576 : String := "43424440090A4041434209070909414307420A0743420A070A44074007074244054041430909094143420507050A4407400907"
theorem cover_1513576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513576 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1513576)
  decide +kernel
#print axioms cover_1513576

def state_1513627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 107 else 60)))
def hex_1513627 : String := "4405404142084309084209094142434405400805054344054041070707054205434405400941070505"
theorem cover_1513627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513627 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1513627)
  decide +kernel
#print axioms cover_1513627
end Mub6.Numerical.CircleFullD0.Forest
