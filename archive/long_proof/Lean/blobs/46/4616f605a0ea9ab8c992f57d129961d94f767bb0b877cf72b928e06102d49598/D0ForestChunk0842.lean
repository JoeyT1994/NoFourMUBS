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
def state_1502699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 14)))
def hex_1502699 : String := "44404405414205434044050606050544050640444106420543400505050606"
theorem cover_1502699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1502699)
  decide +kernel
#print axioms cover_1502699

def state_1502732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 28)))
def hex_1502732 : String := "40424344410707410707444107054107400707430707424308440741070707"
theorem cover_1502732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1502732)
  decide +kernel
#print axioms cover_1502732

def state_1502764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
def hex_1502764 : String := "42434441400A0740430707074105400A430742440706074441404243070707074042430707074243070707410A4042430A44410607060A420607430A44070A"
theorem cover_1502764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502764 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1502764)
  decide +kernel
#print axioms cover_1502764

def state_1502827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
def hex_1502827 : String := "4243444107074106400706444106400706064307440707"
theorem cover_1502827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502827 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1502827)
  decide +kernel
#print axioms cover_1502827

def state_1502851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 28)))
def hex_1502851 : String := "40424441070541430707430705074244410705410643050507"
theorem cover_1502851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502851 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_1502851)
  decide +kernel
#print axioms cover_1502851

def state_1502876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 29)))
def hex_1502876 : String := "40424441434007060643404244054106050707400706410643404206440706060644410707410743070742064407410607"
theorem cover_1502876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502876 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1502876)
  decide +kernel
#print axioms cover_1502876

def state_1502928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
def hex_1502928 : String := "4041050505"
theorem cover_1502928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502928 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1502928)
  decide +kernel
#print axioms cover_1502928

def state_1502938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 58)))
def hex_1502938 : String := "4043414405420505050505"
theorem cover_1502938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1502938)
  decide +kernel
#print axioms cover_1502938
end Mub6.Numerical.CircleFullD0.Forest
