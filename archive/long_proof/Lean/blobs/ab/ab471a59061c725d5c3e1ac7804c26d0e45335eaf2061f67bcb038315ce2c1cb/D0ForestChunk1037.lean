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
def state_1549222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
def hex_1549222 : String := "410640064244410643400642064443410640064206444307060606060606444106434006424443410640064207070606444307410640064206070706410606"
theorem cover_1549222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 63) (hex := hex_1549222)
  decide +kernel
#print axioms cover_1549222

def state_1549285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 22)))
def hex_1549285 : String := "06"
theorem cover_1549285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549285 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1549285)
  decide +kernel
#print axioms cover_1549285

def state_1549286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 23)))
def hex_1549286 : String := "06"
theorem cover_1549286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549286 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1549286)
  decide +kernel
#print axioms cover_1549286

def state_1549288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 11)))
def hex_1549288 : String := "09"
theorem cover_1549288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1549288)
  decide +kernel
#print axioms cover_1549288

def state_1549289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 11)))
def hex_1549289 : String := "444341094042444109434042094409090909094441430709434042444307090707074042094441064340060906090941074307094209444107430709070909"
theorem cover_1549289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 63) (hex := hex_1549289)
  decide +kernel
#print axioms cover_1549289

def state_1549354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 11)))
def hex_1549354 : String := "4443414006424405054443414005420544050505054341060505050543414005090505"
theorem cover_1549354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1549354)
  decide +kernel
#print axioms cover_1549354

def state_1549393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
def hex_1549393 : String := "424443410605050644434140064206080A06430806"
theorem cover_1549393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549393 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1549393)
  decide +kernel
#print axioms cover_1549393

def state_1549419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 44)))
def hex_1549419 : String := "420644434106050506"
theorem cover_1549419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549419 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1549419)
  decide +kernel
#print axioms cover_1549419

def state_1549429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 100 else (if j.val < 4 then 40 else 44)))
def hex_1549429 : String := "44434140050905054341060505"
theorem cover_1549429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1549429)
  decide +kernel
#print axioms cover_1549429
end Mub6.Numerical.CircleFullD0.Forest
