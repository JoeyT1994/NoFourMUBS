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
def state_1579124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 207)))
def hex_1579124 : String := "43400741424407070707400741424443074007414244430707070707430707440707420707"
theorem cover_1579124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579124 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_1579124)
  decide +kernel
#print axioms cover_1579124

def state_1579161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 67) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
def hex_1579161 : String := "424443080843080844430740074142440707070707"
theorem cover_1579161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1579161)
  decide +kernel
#print axioms cover_1579161

def state_1579184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 103)))
def hex_1579184 : String := "44430640414244060544430640410A0605430540410A05054205440605054305404142054405050505"
theorem cover_1579184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579184 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1579184)
  decide +kernel
#print axioms cover_1579184

def state_1579227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 208 else 206)))
def hex_1579227 : String := "40414206440643064007060606"
theorem cover_1579227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1579227)
  decide +kernel
#print axioms cover_1579227

def state_1579242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 132) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 206)))
def hex_1579242 : String := "424443064009094340414244060509420544060505404142440943050A0942444305050544094305074142050905440943400909400909"
theorem cover_1579242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579242 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1579242)
  decide +kernel
#print axioms cover_1579242

def state_1579297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 133) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 206)))
def hex_1579297 : String := "4244064305404142054407050505444306094340070640074109420507"
theorem cover_1579297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579297 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1579297)
  decide +kernel
#print axioms cover_1579297

def state_1579326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 206)))
def hex_1579326 : String := "41424406054406084205440605"
theorem cover_1579326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579326 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_1579326)
  decide +kernel
#print axioms cover_1579326

def state_1579340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 208 else 207)))
def hex_1579340 : String := "404142444305050544430740070543050742050705"
theorem cover_1579340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579340 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1579340)
  decide +kernel
#print axioms cover_1579340
end Mub6.Numerical.CircleFullD0.Forest
