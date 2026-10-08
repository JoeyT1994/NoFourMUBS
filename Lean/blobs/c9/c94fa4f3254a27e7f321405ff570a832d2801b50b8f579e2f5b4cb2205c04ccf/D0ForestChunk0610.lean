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
def state_1335177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
def hex_1335177 : String := "41424306090706"
theorem cover_1335177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1335177)
  decide +kernel
#print axioms cover_1335177

def state_1335185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
def hex_1335185 : String := "07"
theorem cover_1335185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335185 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1335185)
  decide +kernel
#print axioms cover_1335185

def state_1335187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 13)))
def hex_1335187 : String := "434044410705070740444109050509"
theorem cover_1335187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1335187)
  decide +kernel
#print axioms cover_1335187

def state_1335202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 13)))
def hex_1335202 : String := "43074044410742434005074005444107050543074044414243074005074307404441074205DB07070541070544410706070707"
theorem cover_1335202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 51) (hex := hex_1335202)
  decide +kernel
#print axioms cover_1335202

def state_1335253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_1335253 : String := "40430741080A07"
theorem cover_1335253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335253 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1335253)
  decide +kernel
#print axioms cover_1335253

def state_1335261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_1335261 : String := "43444041420644060606060644400541420543440605050505"
theorem cover_1335261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1335261)
  decide +kernel
#print axioms cover_1335261

def state_1335287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
def hex_1335287 : String := "4406400A07"
theorem cover_1335287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1335287)
  decide +kernel
#print axioms cover_1335287

def state_1335292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
def hex_1335292 : String := "444041430A4442054005430605050A4143440606444243064406054306084205430A404144420543060505054144060706430644060540054143070505"
theorem cover_1335292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1335292)
  decide +kernel
#print axioms cover_1335292

def state_1335354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1335354 : String := "424306444209434406070909430644430744404142090742430644060906060707"
theorem cover_1335354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_1335354)
  decide +kernel
#print axioms cover_1335354

def state_1335387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1335387 : String := "4243064441420643064406060641420543060505434406074441430644064042060606064107430606"
theorem cover_1335387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1335387)
  decide +kernel
#print axioms cover_1335387
end Mub6.Numerical.CircleFullD0.Forest
