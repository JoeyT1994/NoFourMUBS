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
def state_1517774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 92) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 63)))
def hex_1517774 : String := "424344414009060A4106400906440A0643444140094209070941404209094206430506400942430606094441400942060709414008064009420609"
theorem cover_1517774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517774 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1517774)
  decide +kernel
#print axioms cover_1517774

def state_1517833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 93) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 63)))
def hex_1517833 : String := "4009420A430909"
theorem cover_1517833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517833 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1517833)
  decide +kernel
#print axioms cover_1517833

def state_1517841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 46) else (if j.val < 3 then 42 else (if j.val < 4 then 27 else 31)))
def hex_1517841 : String := "43440A41060A0A"
theorem cover_1517841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1517841)
  decide +kernel
#print axioms cover_1517841

def state_1517849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 31)))
def hex_1517849 : String := "444140420A08080A41404243444140420608060A06440A0643084441400706084106404206050642060840420A430844084140420A0508080A"
theorem cover_1517849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517849 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1517849)
  decide +kernel
#print axioms cover_1517849

def state_1517906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 46) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 31)))
def hex_1517906 : String := "440A4140420643444140420607060A06440A06060A"
theorem cover_1517906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517906 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1517906)
  decide +kernel
#print axioms cover_1517906

def state_1517927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 47) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
def hex_1517927 : String := "40420A434409414009420A090944094140090A09420A430A0A"
theorem cover_1517927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517927 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1517927)
  decide +kernel
#print axioms cover_1517927

def state_1517953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 7)))
def hex_1517953 : String := "4406400508"
theorem cover_1517953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1517953)
  decide +kernel
#print axioms cover_1517953

def state_1517959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
def hex_1517959 : String := "4041424306090606414243084440050540414244050707094107070808"
theorem cover_1517959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517959 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1517959)
  decide +kernel
#print axioms cover_1517959
end Mub6.Numerical.CircleFullD0.Forest
