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
def state_1345659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1345659 : String := "4044434241050705074305064443080606"
theorem cover_1345659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1345659)
  decide +kernel
#print axioms cover_1345659

def state_1345676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1345676 : String := "404407434241404407434206050644430806064044074342414044434206050606068007074407434206070607074443080743424106400A060706"
theorem cover_1345676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345676 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 59) (hex := hex_1345676)
  decide +kernel
#print axioms cover_1345676

def state_1345735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 25)))
def hex_1345735 : String := "420607"
theorem cover_1345735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1345735)
  decide +kernel
#print axioms cover_1345735

def state_1345738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
def hex_1345738 : String := "440A43420A4106404408060806"
theorem cover_1345738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1345738)
  decide +kernel
#print axioms cover_1345738

def state_1345751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
def hex_1345751 : String := "4106420640434442064106404344424106404344420641058006060605420605444206060606060606"
theorem cover_1345751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 41) (hex := hex_1345751)
  decide +kernel
#print axioms cover_1345751

def state_1345792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1345792 : String := "434441424307074308084243080A08410909440A06"
theorem cover_1345792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1345792)
  decide +kernel
#print axioms cover_1345792

def state_1345813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1345813 : String := "40434106420644400506050606"
theorem cover_1345813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345813 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1345813)
  decide +kernel
#print axioms cover_1345813

def state_1345826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1345826 : String := "4440440A060606"
theorem cover_1345826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1345826)
  decide +kernel
#print axioms cover_1345826

def state_1345837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_1345837 : String := "434441054005080544414044050544084206054007440742430807074105404243444105400543050505440706430507424344410540430506060506430506"
theorem cover_1345837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1345837)
  decide +kernel
#print axioms cover_1345837

def state_1345900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_1345900 : String := "4305440705"
theorem cover_1345900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1345900)
  decide +kernel
#print axioms cover_1345900
end Mub6.Numerical.CircleFullD0.Forest
