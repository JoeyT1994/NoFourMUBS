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
def state_1328087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 22)))
def hex_1328087 : String := "420541404344054205414005440543420541440540050605050505434442050642054144064043060A0605440542050A05"
theorem cover_1328087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 49) (hex := hex_1328087)
  decide +kernel
#print axioms cover_1328087

def state_1328137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 22 else 23)))
def hex_1328137 : String := "05"
theorem cover_1328137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1328137)
  decide +kernel
#print axioms cover_1328137

def state_1328141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 46)))
def hex_1328141 : String := "434205414440054342054144404308054306054008434205060805054043080543420541080542054108050505"
theorem cover_1328141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 45) (hex := hex_1328141)
  decide +kernel
#print axioms cover_1328141

def state_1328187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 44 else 46)))
def hex_1328187 : String := "420541444043424144050A05060A43060A40434241444005094005090541444043060A0640430708074406404306050642050A434206060944400506400506"
theorem cover_1328187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1328187)
  decide +kernel
#print axioms cover_1328187

def state_1328250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 45 else 46)))
def hex_1328250 : String := "4205410A05"
theorem cover_1328250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1328250)
  decide +kernel
#print axioms cover_1328250

def state_1328256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 47)))
def hex_1328256 : String := "434205414440084342050808080505"
theorem cover_1328256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1328256)
  decide +kernel
#print axioms cover_1328256

def state_1328271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 47)))
def hex_1328271 : String := "434241090541444043424109054107444043060506074205410805434207070940430709094440054306054005434205060509"
theorem cover_1328271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1328271)
  decide +kernel
#print axioms cover_1328271

def state_1328322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 23)))
def hex_1328322 : String := "05"
theorem cover_1328322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1328322)
  decide +kernel
#print axioms cover_1328322

def state_1328323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 11)))
def hex_1328323 : String := "05"
theorem cover_1328323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1328323)
  decide +kernel
#print axioms cover_1328323

def state_1328324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
def hex_1328324 : String := "05"
theorem cover_1328324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328324 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1328324)
  decide +kernel
#print axioms cover_1328324
end Mub6.Numerical.CircleFullD0.Forest
