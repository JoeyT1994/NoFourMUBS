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
def state_1544477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 101 else (if j.val < 4 then 81 else 86)))
def hex_1544477 : String := "410640064209440709"
theorem cover_1544477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1544477)
  decide +kernel
#print axioms cover_1544477

def state_1544486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 101 else (if j.val < 4 then 40 else 87)))
def hex_1544486 : String := "43410640420644430A060642444341094042060A080609444341400642090A400A084106400609434106400A4209070606"
theorem cover_1544486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544486 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1544486)
  decide +kernel
#print axioms cover_1544486

def state_1544535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 41 else 43)))
def hex_1544535 : String := "06"
theorem cover_1544535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544535 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1544535)
  decide +kernel
#print axioms cover_1544535

def state_1544540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 42)))
def hex_1544540 : String := "424441064340064244070644410607060606444143400605064340094244094105090940064206440706410643400642060506"
theorem cover_1544540 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544540 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1544540)
  decide +kernel
#print axioms cover_1544540

def state_1544593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 84)))
def hex_1544593 : String := "414340420605424405050506434042440841064308064441430540060808414305064308400608084042064407064244074106074441430806074106430806"
theorem cover_1544593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1544593)
  decide +kernel
#print axioms cover_1544593

def state_1544656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 85)))
def hex_1544656 : String := "4143050643404206444105430506064244410508410543050644050540064206444106434006080606"
theorem cover_1544656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544656 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1544656)
  decide +kernel
#print axioms cover_1544656

def state_1544699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 116) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 84)))
def hex_1544699 : String := "430540064244050505"
theorem cover_1544699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1544699)
  decide +kernel
#print axioms cover_1544699

def state_1544709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 117) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 84)))
def hex_1544709 : String := "4042444105430808410543054009054409054244080505"
theorem cover_1544709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1544709)
  decide +kernel
#print axioms cover_1544709
end Mub6.Numerical.CircleFullD0.Forest
