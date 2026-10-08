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
def state_2262721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 92 else 54)))
def hex_2262721 : String := "41440640080708"
theorem cover_2262721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262721 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2262721)
  decide +kernel
#print axioms cover_2262721

def state_2262728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 93 else 54)))
def hex_2262728 : String := "42414408404342410A0508084342410740080707070808"
theorem cover_2262728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262728 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2262728)
  decide +kernel
#print axioms cover_2262728

def state_2262756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 110)))
def hex_2262756 : String := "4043094205084342414440094309094009434241090509420509090942414440054342050905050509"
theorem cover_2262756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262756 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2262756)
  decide +kernel
#print axioms cover_2262756

def state_2262797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 111)))
def hex_2262797 : String := "40434205090543424144400606050541090942054144090505"
theorem cover_2262797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2262797)
  decide +kernel
#print axioms cover_2262797

def state_2262822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
def hex_2262822 : String := "44400743090505"
theorem cover_2262822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2262822)
  decide +kernel
#print axioms cover_2262822

def state_2262829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 92 else 55)))
def hex_2262829 : String := "4144090909"
theorem cover_2262829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2262829)
  decide +kernel
#print axioms cover_2262829

def state_2262834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 93 else 55)))
def hex_2262834 : String := "4241444005434205410A05050505414408400943090908"
theorem cover_2262834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2262834)
  decide +kernel
#print axioms cover_2262834

def state_2262861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 110)))
def hex_2262861 : String := "404342BE41440940090A09424144400A0A0A05410A094342BE4144070A444009430907400943420A090A42410A444043BE0543BE05054107444008070A"
theorem cover_2262861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2262861)
  decide +kernel
#print axioms cover_2262861

def state_2262922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 111)))
def hex_2262922 : String := "404342414406060541440A064409064205410A054342410606410A444043090606064206410A06"
theorem cover_2262922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2262922)
  decide +kernel
#print axioms cover_2262922
end Mub6.Numerical.CircleFullD0.Forest
