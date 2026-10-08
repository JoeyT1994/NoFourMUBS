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
def state_2323264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 61 else 88)))
def hex_2323264 : String := "414340440542050505404442410543054009050542414305404405050543064044094206060641054305400905440542050543064044060606"
theorem cover_2323264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323264 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2323264)
  decide +kernel
#print axioms cover_2323264

def state_2323321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 61 else 88)))
def hex_2323321 : String := "41430540440507054306400906"
theorem cover_2323321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2323321)
  decide +kernel
#print axioms cover_2323321

def state_2323334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 61 else 89)))
def hex_2323334 : String := "42414307404442410743064044060606070707430640440606064107430607"
theorem cover_2323334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_2323334)
  decide +kernel
#print axioms cover_2323334

def state_2323367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 45)))
def hex_2323367 : String := "434044424107430740080707070740444241080841070808444241070A0707"
theorem cover_2323367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2323367)
  decide +kernel
#print axioms cover_2323367

def state_2323398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 45)))
def hex_2323398 : String := "43404442414306080641430608064208084406064044424108084108080844420A41430740080706420808"
theorem cover_2323398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_2323398)
  decide +kernel
#print axioms cover_2323398

def state_2323441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 45)))
def hex_2323441 : String := "41074307404442410808070744424107060707"
theorem cover_2323441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323441 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2323441)
  decide +kernel
#print axioms cover_2323441

def state_2323463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 44)))
def hex_2323463 : String := "4143400644424106070642080606434044070544070807"
theorem cover_2323463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2323463)
  decide +kernel
#print axioms cover_2323463
end Mub6.Numerical.CircleFullD0.Forest
