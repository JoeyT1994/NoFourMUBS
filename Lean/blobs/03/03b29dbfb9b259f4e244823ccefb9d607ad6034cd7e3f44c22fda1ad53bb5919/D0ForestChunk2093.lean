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
def state_2582844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
def hex_2582844 : String := "41444240054344414209050A414208090A0540054344050505424009434441070606084005434441050541050505440A0A"
theorem cover_2582844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2582844)
  decide +kernel
#print axioms cover_2582844

def state_2582893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_2582893 : String := "444005424143440540050805050540054241084344080605410505"
theorem cover_2582893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2582893)
  decide +kernel
#print axioms cover_2582893

def state_2582920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_2582920 : String := "420643440A060A"
theorem cover_2582920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582920 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2582920)
  decide +kernel
#print axioms cover_2582920

def state_2582929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_2582929 : String := "43444340414205444305080842064443060606084041080808434006080808"
theorem cover_2582929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582929 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2582929)
  decide +kernel
#print axioms cover_2582929

def state_2582968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 16)))
def hex_2582968 : String := "42404105050540414443054205400705430542054041050A0544430A42400A050A430A424006050A410505"
theorem cover_2582968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2582968)
  decide +kernel
#print axioms cover_2582968

def state_2583012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 44 else (if j.val < 4 then 49 else 16)))
def hex_2583012 : String := "4041444305080844434208400A054208400A084342054006050808"
theorem cover_2583012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2583012)
  decide +kernel
#print axioms cover_2583012

def state_2583043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 40) else (if j.val < 3 then 45 else (if j.val < 4 then 98 else 32)))
def hex_2583043 : String := "4240414443054205074305084443054240070507430542050A054041070741064407430507"
theorem cover_2583043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583043 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2583043)
  decide +kernel
#print axioms cover_2583043
end Mub6.Numerical.CircleFullD0.Forest
