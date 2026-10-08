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
def state_1546387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 239) else (if j.val < 3 then 207 else (if j.val < 4 then 163 else 172)))
def hex_1546387 : String := "404244078944070942440889440889"
theorem cover_1546387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 15) (hex := hex_1546387)
  decide +kernel
#print axioms cover_1546387

def state_1546402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 173)))
def hex_1546402 : String := "89"
theorem cover_1546402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546402 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1546402)
  decide +kernel
#print axioms cover_1546402

def state_1546404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 87)))
def hex_1546404 : String := "41404206050540420A0A42440A0707"
theorem cover_1546404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1546404)
  decide +kernel
#print axioms cover_1546404

def state_1546420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
def hex_1546420 : String := "4006420689"
theorem cover_1546420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546420 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1546420)
  decide +kernel
#print axioms cover_1546420

def state_1546425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
def hex_1546425 : String := "40420644430A06064244434140064244430506060540420A0A4244430A410A0A0A440A0A410640064206444341064006420A0A06064341064006070689"
theorem cover_1546425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1546425)
  decide +kernel
#print axioms cover_1546425

def state_1546487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
def hex_1546487 : String := "06"
theorem cover_1546487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546487 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1546487)
  decide +kernel
#print axioms cover_1546487

def state_1546489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 41 else 43)))
def hex_1546489 : String := "44410643400642064407060506"
theorem cover_1546489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546489 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1546489)
  decide +kernel
#print axioms cover_1546489

def state_1546503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 86)))
def hex_1546503 : String := "41064340420644410607064244410607410643400642064407060644414340064244070644414340064206440705060789064340074207440789078906"
theorem cover_1546503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546503 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 61) (hex := hex_1546503)
  decide +kernel
#print axioms cover_1546503

def state_1546564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 87)))
def hex_1546564 : String := "410606"
theorem cover_1546564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546564 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1546564)
  decide +kernel
#print axioms cover_1546564

def state_1546567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 10)))
def hex_1546567 : String := "444140064206434106440706060741064006420643444106070606"
theorem cover_1546567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546567 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1546567)
  decide +kernel
#print axioms cover_1546567

def state_1546595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 10)))
def hex_1546595 : String := "434441094208404109070841094209404409090909"
theorem cover_1546595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546595 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1546595)
  decide +kernel
#print axioms cover_1546595

def state_1546621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 20)))
def hex_1546621 : String := "41094344080909"
theorem cover_1546621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546621 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1546621)
  decide +kernel
#print axioms cover_1546621
end Mub6.Numerical.CircleFullD0.Forest
