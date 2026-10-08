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
def state_1506844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 121)))
def hex_1506844 : String := "4143424440070606074206074342444041070707404143060643074206070607424440414307064307054106070607"
theorem cover_1506844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1506844)
  decide +kernel
#print axioms cover_1506844

def state_1506891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 84 else (if j.val < 4 then 107 else 60)))
def hex_1506891 : String := "4440414205430705420509414205070540410842084344090808414206430706424344050605434407400706440506"
theorem cover_1506891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506891 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1506891)
  decide +kernel
#print axioms cover_1506891

def state_1506938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 60)))
def hex_1506938 : String := "4344074041070707444041070707404142430707074243070707410707"
theorem cover_1506938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1506938)
  decide +kernel
#print axioms cover_1506938

def state_1506967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 60)))
def hex_1506967 : String := "4142434440410707060606430707424344404107430707410707404143070643420607420607064405064307440707"
theorem cover_1506967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506967 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1506967)
  decide +kernel
#print axioms cover_1506967

def state_1507015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
def hex_1507015 : String := "4142430A060A42434440410A430A42080A4143060643420605420644400A06054005064440080606430A44400A410A42430706070A"
theorem cover_1507015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1507015)
  decide +kernel
#print axioms cover_1507015

def state_1507068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
def hex_1507068 : String := "41420643050642064344070544404106070606"
theorem cover_1507068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507068 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1507068)
  decide +kernel
#print axioms cover_1507068
end Mub6.Numerical.CircleFullD0.Forest
