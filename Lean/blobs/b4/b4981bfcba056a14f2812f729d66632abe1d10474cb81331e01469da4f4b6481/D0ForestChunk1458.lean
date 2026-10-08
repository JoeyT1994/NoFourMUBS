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
def state_1650669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 82)))
def hex_1650669 : String := "4241404344060606434442414006430744060640064307060642414007080807440642414006434406060606064006434406080606"
theorem cover_1650669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1650669)
  decide +kernel
#print axioms cover_1650669

def state_1650722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 83)))
def hex_1650722 : String := "424140430706430844424140060808060840430706084140060806"
theorem cover_1650722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1650722)
  decide +kernel
#print axioms cover_1650722

def state_1650749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 41)))
def hex_1650749 : String := "44064241400643440606060606"
theorem cover_1650749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650749 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1650749)
  decide +kernel
#print axioms cover_1650749

def state_1650762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
def hex_1650762 : String := "40064344060806"
theorem cover_1650762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650762 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1650762)
  decide +kernel
#print axioms cover_1650762

def state_1650769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 20)))
def hex_1650769 : String := "444241080606424140064344420706424140434405070507400607064405064006434406424140060706060606"
theorem cover_1650769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1650769)
  decide +kernel
#print axioms cover_1650769

def state_1650814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
def hex_1650814 : String := "400643444241400643440642410905060606064241404344060606430544064205064006050606"
theorem cover_1650814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1650814)
  decide +kernel
#print axioms cover_1650814

def state_1650853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
def hex_1650853 : String := "414006434406060606"
theorem cover_1650853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1650853)
  decide +kernel
#print axioms cover_1650853

def state_1650865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
def hex_1650865 : String := "4344424109430906060944060A"
theorem cover_1650865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1650865)
  decide +kernel
#print axioms cover_1650865

def state_1650883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
def hex_1650883 : String := "430944424140094309440A09400A430A0A41090609"
theorem cover_1650883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1650883)
  decide +kernel
#print axioms cover_1650883

def state_1650905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 42)))
def hex_1650905 : String := "08"
theorem cover_1650905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1650905)
  decide +kernel
#print axioms cover_1650905
end Mub6.Numerical.CircleFullD0.Forest
