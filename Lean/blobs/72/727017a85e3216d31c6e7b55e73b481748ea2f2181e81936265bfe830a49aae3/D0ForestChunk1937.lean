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
def state_2337875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_2337875 : String := "444041444209090944424340060640440A4109050A434044410906410706440A06404441090A090942060941440907440A064041070606"
theorem cover_2337875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337875 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2337875)
  decide +kernel
#print axioms cover_2337875

def state_2337930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
def hex_2337930 : String := "43444041074243064407064307074107060944404107424443400707090907410742090709"
theorem cover_2337930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337930 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2337930)
  decide +kernel
#print axioms cover_2337930

def state_2337968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_2337968 : String := "43064440440A060606"
theorem cover_2337968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2337968)
  decide +kernel
#print axioms cover_2337968

def state_2337978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
def hex_2337978 : String := "4440420643440606060640420643060606"
theorem cover_2337978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337978 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2337978)
  decide +kernel
#print axioms cover_2337978

def state_2337995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_2337995 : String := "44404244414340060640444241430609064107430608420507440A06064143060906444143064007070641070642440A060640420541070506"
theorem cover_2337995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_2337995)
  decide +kernel
#print axioms cover_2337995

def state_2338052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2338052 : String := "414243094441070907434409060942430A440A064306444209440A0606"
theorem cover_2338052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2338052 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2338052)
  decide +kernel
#print axioms cover_2338052
end Mub6.Numerical.CircleFullD0.Forest
