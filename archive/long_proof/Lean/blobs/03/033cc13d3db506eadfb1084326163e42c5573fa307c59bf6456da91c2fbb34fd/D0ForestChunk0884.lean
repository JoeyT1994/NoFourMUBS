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
def state_1512724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 30)))
def hex_1512724 : String := "420A440A404143420A440A404143420709070A0A0A0A0A"
theorem cover_1512724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1512724)
  decide +kernel
#print axioms cover_1512724

def state_1512747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
def hex_1512747 : String := "414342064440414342060842064405060A410608404106430606064206440A0643420A440A4140430A0A060A0A"
theorem cover_1512747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1512747)
  decide +kernel
#print axioms cover_1512747

def state_1512794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
def hex_1512794 : String := "434206444041430506430542060506064206444041064342064440080606060606"
theorem cover_1512794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1512794)
  decide +kernel
#print axioms cover_1512794

def state_1512829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 31)))
def hex_1512829 : String := "44404107070606"
theorem cover_1512829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1512829)
  decide +kernel
#print axioms cover_1512829

def state_1512838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 62)))
def hex_1512838 : String := "41434205054207444005410543054205050543424440050A0505420744404105050A05"
theorem cover_1512838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512838 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1512838)
  decide +kernel
#print axioms cover_1512838

def state_1512873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 62)))
def hex_1512873 : String := "4143420605420644404106430506060643420A44410505054206440A06"
theorem cover_1512873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512873 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1512873)
  decide +kernel
#print axioms cover_1512873

def state_1512902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 63)))
def hex_1512902 : String := "400506"
theorem cover_1512902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512902 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1512902)
  decide +kernel
#print axioms cover_1512902

def state_1512905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 31)))
def hex_1512905 : String := "4206444041434206444041070741060A40070608434207440A070741060A4041060706"
theorem cover_1512905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1512905)
  decide +kernel
#print axioms cover_1512905

def state_1512940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
def hex_1512940 : String := "410643420644060606"
theorem cover_1512940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512940 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1512940)
  decide +kernel
#print axioms cover_1512940
end Mub6.Numerical.CircleFullD0.Forest
