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
def state_1027388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 105 else 101)))
def hex_1027388 : String := "4241400A440A060A4106400506"
theorem cover_1027388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1027388)
  decide +kernel
#print axioms cover_1027388

def state_1027401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 50)))
def hex_1027401 : String := "404405430505444309054342414044050A440943090940050905420A05"
theorem cover_1027401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027401 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1027401)
  decide +kernel
#print axioms cover_1027401

def state_1027430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 50)))
def hex_1027430 : String := "41400544050605"
theorem cover_1027430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027430 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1027430)
  decide +kernel
#print axioms cover_1027430

def state_1027437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 50)))
def hex_1027437 : String := "420A41400544050505"
theorem cover_1027437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027437 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1027437)
  decide +kernel
#print axioms cover_1027437

def state_1027450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
def hex_1027450 : String := "44434241070A070A43070A"
theorem cover_1027450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027450 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1027450)
  decide +kernel
#print axioms cover_1027450

def state_1027463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 102)))
def hex_1027463 : String := "42414044430707074406064044434241070A070A43070A44434241064044060606064241060A06434241064044060606064208064106400706"
theorem cover_1027463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1027463)
  decide +kernel
#print axioms cover_1027463

def state_1027520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 105 else 102)))
def hex_1027520 : String := "4241400A080A4106400A06"
theorem cover_1027520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1027520)
  decide +kernel
#print axioms cover_1027520

def state_1027531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 103)))
def hex_1027531 : String := "434241400708404443070707444342080608080742084106400706"
theorem cover_1027531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027531 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1027531)
  decide +kernel
#print axioms cover_1027531

def state_1027559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 51)))
def hex_1027559 : String := "4443420A050A43420A050A"
theorem cover_1027559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027559 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1027559)
  decide +kernel
#print axioms cover_1027559

def state_1027572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 102)))
def hex_1027572 : String := "424140440A0A444342414044090A09400A0941064005060A43424140440A0A44430606430606814106810A400A44434209050A81414005440543060505"
theorem cover_1027572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1027572)
  decide +kernel
#print axioms cover_1027572

def state_1027633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 38 else (if j.val < 4 then 105 else 102)))
def hex_1027633 : String := "420A0A"
theorem cover_1027633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1027633)
  decide +kernel
#print axioms cover_1027633
end Mub6.Numerical.CircleFullD0.Forest
