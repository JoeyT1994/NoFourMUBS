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
def state_1563364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 212 else (if j.val < 4 then 168 else 177)))
def hex_1563364 : String := "41404442434140080606410805434140080606410840080642430808430808444243060A0642434107060A4306410A0640444205064205430641080506"
theorem cover_1563364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_1563364)
  decide +kernel
#print axioms cover_1563364

def state_1563425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 212 else (if j.val < 4 then 169 else 177)))
def hex_1563425 : String := "4140440A080A400544050A"
theorem cover_1563425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1563425)
  decide +kernel
#print axioms cover_1563425

def state_1563436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 213 else (if j.val < 4 then 84 else 177)))
def hex_1563436 : String := "43414044424306080642080844064206060641404442080808440A0A4044420543060842430805084406420A06"
theorem cover_1563436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563436 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 45) (hex := hex_1563436)
  decide +kernel
#print axioms cover_1563436

def state_1563481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
def hex_1563481 : String := "4044054205430905444205064243050543064140050605"
theorem cover_1563481 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563481 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1563481)
  decide +kernel
#print axioms cover_1563481

def state_1563504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 85 else 88)))
def hex_1563504 : String := "4140440742054308054442050A420A0A05"
theorem cover_1563504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563504 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1563504)
  decide +kernel
#print axioms cover_1563504

def state_1563522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 84 else 88)))
def hex_1563522 : String := "4140440942430908094442430641404406420A0606060642434140090606414044080844420A064208084044094208080643064140080606400906"
theorem cover_1563522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1563522)
  decide +kernel
#print axioms cover_1563522

def state_1563582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 88)))
def hex_1563582 : String := "4044434241080708074308084443420A410A4009060A4342410A400A0A410A40080A0A"
theorem cover_1563582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1563582)
  decide +kernel
#print axioms cover_1563582
end Mub6.Numerical.CircleFullD0.Forest
