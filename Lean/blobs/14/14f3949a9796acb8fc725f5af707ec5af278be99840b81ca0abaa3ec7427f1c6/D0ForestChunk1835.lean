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
def state_2313509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
def hex_2313509 : String := "440943444009054041070807444009410509404142444341070808430708070841074244430640080643060707"
theorem cover_2313509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313509 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2313509)
  decide +kernel
#print axioms cover_2313509

def state_2313555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 10)))
def hex_2313555 : String := "40414243090A0909414243054405400A05054243090909"
theorem cover_2313555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2313555)
  decide +kernel
#print axioms cover_2313555

def state_2313580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 22)))
def hex_2313580 : String := "4142430A0A0A4243090A09"
theorem cover_2313580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313580 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2313580)
  decide +kernel
#print axioms cover_2313580

def state_2313592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 22)))
def hex_2313592 : String := "4243440540410743070A0744400A41054243050A05400A41074243070A0743050A"
theorem cover_2313592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2313592)
  decide +kernel
#print axioms cover_2313592

def state_2313625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 22)))
def hex_2313625 : String := "42434409400943090944400941420909094041080841424309080A0943090A"
theorem cover_2313625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313625 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2313625)
  decide +kernel
#print axioms cover_2313625

def state_2313656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 23)))
def hex_2313656 : String := "40410A4208084142430744400A070A074243444043080843074107084008430707444008414208070808430708"
theorem cover_2313656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313656 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2313656)
  decide +kernel
#print axioms cover_2313656

def state_2313701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
def hex_2313701 : String := "4344054243054405070544090A"
theorem cover_2313701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2313701)
  decide +kernel
#print axioms cover_2313701

def state_2313715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_2313715 : String := "42430544050705"
theorem cover_2313715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313715 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2313715)
  decide +kernel
#print axioms cover_2313715

def state_2313724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
def hex_2313724 : String := "440540430544050705"
theorem cover_2313724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2313724)
  decide +kernel
#print axioms cover_2313724

def state_2313734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 10)))
def hex_2313734 : String := "404105424305440540440541050905430544050505"
theorem cover_2313734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_2313734)
  decide +kernel
#print axioms cover_2313734

def state_2313758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 22)))
def hex_2313758 : String := "424305404405070505"
theorem cover_2313758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313758 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2313758)
  decide +kernel
#print axioms cover_2313758
end Mub6.Numerical.CircleFullD0.Forest
