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
def state_1630569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 5)))
def hex_1630569 : String := "444041080A4142434408080843440840080808420A43440A0A0A4009414442084309084208080A"
theorem cover_1630569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630569 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1630569)
  decide +kernel
#print axioms cover_1630569

def state_1630608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1630608 : String := "4243444009420A434105050A090A43444043090A434142090942050941420A440A090A090A"
theorem cover_1630608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630608 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1630608)
  decide +kernel
#print axioms cover_1630608

def state_1630645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_1630645 : String := "4441084207064142084408080A"
theorem cover_1630645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1630645)
  decide +kernel
#print axioms cover_1630645

def state_1630663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
def hex_1630663 : String := "4244064143070543090606"
theorem cover_1630663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1630663)
  decide +kernel
#print axioms cover_1630663

def state_1630676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 8)))
def hex_1630676 : String := "4143400542440841054307050705434006424443070643074140054244060706060606"
theorem cover_1630676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630676 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_1630676)
  decide +kernel
#print axioms cover_1630676

def state_1630712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
def hex_1630712 : String := "43400742444143070543074005424405070509074005424405410543400542440508050505"
theorem cover_1630712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630712 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1630712)
  decide +kernel
#print axioms cover_1630712

def state_1630750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
def hex_1630750 : String := "4042444307060707424443074140074244070707400642440643074107060643074109400742090707"
theorem cover_1630750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1630750)
  decide +kernel
#print axioms cover_1630750
end Mub6.Numerical.CircleFullD0.Forest
