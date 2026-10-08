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
def state_2305626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
def hex_2305626 : String := "4342440740070A44400941050940414243090743090909414243050A430544054009050942074440074143050707404108074143420A44050808430907"
theorem cover_2305626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2305626)
  decide +kernel
#print axioms cover_2305626

def state_2305687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 107) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
def hex_2305687 : String := "430907"
theorem cover_2305687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305687 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2305687)
  decide +kernel
#print axioms cover_2305687

def state_2305690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
def hex_2305690 : String := "4143420A44050A420A444041050A0540410A0A0A43060A"
theorem cover_2305690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2305690)
  decide +kernel
#print axioms cover_2305690

def state_2305717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 72 else (if j.val < 4 then 110 else 91)))
def hex_2305717 : String := "4440414342070907070A404108050A"
theorem cover_2305717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305717 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2305717)
  decide +kernel
#print axioms cover_2305717

def state_2305732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 73 else (if j.val < 4 then 110 else 91)))
def hex_2305732 : String := "44404142434409080843440908084208084142430A0A4344050A4440080A0842064306084041080841424306084344060608420606"
theorem cover_2305732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2305732)
  decide +kernel
#print axioms cover_2305732

def state_2305785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 36 else (if j.val < 4 then 111 else 91)))
def hex_2305785 : String := "42444007414308070708444008414308080808"
theorem cover_2305785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2305785)
  decide +kernel
#print axioms cover_2305785

def state_2305804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 107) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
def hex_2305804 : String := "43420644090808"
theorem cover_2305804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305804 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2305804)
  decide +kernel
#print axioms cover_2305804

def state_2305811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
def hex_2305811 : String := "41434206440A0A420A444041430A0A0A0A4041430808080A43060A"
theorem cover_2305811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305811 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2305811)
  decide +kernel
#print axioms cover_2305811

def state_2305840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 90)))
def hex_2305840 : String := "4041424305440540410509050542430609430509410505"
theorem cover_2305840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2305840)
  decide +kernel
#print axioms cover_2305840
end Mub6.Numerical.CircleFullD0.Forest
