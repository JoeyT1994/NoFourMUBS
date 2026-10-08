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
def state_1654675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 83)))
def hex_1654675 : String := "4241404344070607074043A0070741404344424105A00542410AA04105080543440708074043A0440742074107400707434442074107080807"
theorem cover_1654675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1654675)
  decide +kernel
#print axioms cover_1654675

def state_1654732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
def hex_1654732 : String := "43440A0644074206410A4043080706"
theorem cover_1654732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1654732)
  decide +kernel
#print axioms cover_1654732

def state_1654748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
def hex_1654748 : String := "40434442410540430A050A41054005430A0542414009064043084405080841090844054241054005430A050543440A0844420A0A420A410A4043080508"
theorem cover_1654748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654748 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1654748)
  decide +kernel
#print axioms cover_1654748

def state_1654814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 198) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
def hex_1654814 : String := "404344420A41050A420A410A08440542410540050505430A0A"
theorem cover_1654814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1654814)
  decide +kernel
#print axioms cover_1654814

def state_1654841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 199) else (if j.val < 3 then 122 else (if j.val < 4 then 208 else 82)))
def hex_1654841 : String := "4442410A40430A440A0A0A41404307050A40430744060843080A08"
theorem cover_1654841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1654841)
  decide +kernel
#print axioms cover_1654841

def state_1654869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 199) else (if j.val < 3 then 122 else (if j.val < 4 then 209 else 164)))
def hex_1654869 : String := "424140050540434405420A0505430A09410540054344050A05"
theorem cover_1654869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654869 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1654869)
  decide +kernel
#print axioms cover_1654869

def state_1654894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 199) else (if j.val < 3 then 122 else (if j.val < 4 then 209 else 165)))
def hex_1654894 : String := "424140434405080543080A40434442A0080844054208054308440A084140054308054043080508"
theorem cover_1654894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654894 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_1654894)
  decide +kernel
#print axioms cover_1654894
end Mub6.Numerical.CircleFullD0.Forest
