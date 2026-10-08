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
def state_1031611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 102 else (if j.val < 4 then 74 else 62)))
def hex_1031611 : String := "4440414205430544054009054205050540414209430808424305074305444041050505400909410805"
theorem cover_1031611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1031611)
  decide +kernel
#print axioms cover_1031611

def state_1031652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 102 else (if j.val < 4 then 75 else 62)))
def hex_1031652 : String := "44404109420743440A4009070A07400941084207430707"
theorem cover_1031652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031652 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1031652)
  decide +kernel
#print axioms cover_1031652

def state_1031679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 202) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
def hex_1031679 : String := "42430544404142050505054041084205430508084344054041080505444041420807420505410505404108424305080708"
theorem cover_1031679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1031679)
  decide +kernel
#print axioms cover_1031679

def state_1031728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
def hex_1031728 : String := "4243054405404105050543054440410505054041420507420505410505"
theorem cover_1031728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031728 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1031728)
  decide +kernel
#print axioms cover_1031728

def state_1031757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
def hex_1031757 : String := "41420508420505"
theorem cover_1031757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031757 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1031757)
  decide +kernel
#print axioms cover_1031757

def state_1031766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 202) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 125)))
def hex_1031766 : String := "42430808430808"
theorem cover_1031766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1031766)
  decide +kernel
#print axioms cover_1031766

def state_1031773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 125)))
def hex_1031773 : String := "424344050644404142430509430544050642050541050540410606410842050543444006050644404142430607074243050707410842050540064108420807"
theorem cover_1031773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1031773)
  decide +kernel
#print axioms cover_1031773

def state_1031836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 125)))
def hex_1031836 : String := "4108424305440508430508"
theorem cover_1031836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1031836)
  decide +kernel
#print axioms cover_1031836
end Mub6.Numerical.CircleFullD0.Forest
