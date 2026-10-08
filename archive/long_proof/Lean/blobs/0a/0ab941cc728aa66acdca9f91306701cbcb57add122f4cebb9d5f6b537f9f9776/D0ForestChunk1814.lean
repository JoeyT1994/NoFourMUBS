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
def state_2308491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
def hex_2308491 : String := "4143090643424440410643424440064106080844400609080841094342440A0909420909404109080944404106434209060609094208440606"
theorem cover_2308491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_2308491)
  decide +kernel
#print axioms cover_2308491

def state_2308548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
def hex_2308548 : String := "41094342444041090A0909094244090909"
theorem cover_2308548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2308548)
  decide +kernel
#print axioms cover_2308548

def state_2308565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 47)))
def hex_2308565 : String := "404109434209090809"
theorem cover_2308565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308565 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2308565)
  decide +kernel
#print axioms cover_2308565

def state_2308574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 23)))
def hex_2308574 : String := "4244400841090808444006410643090808"
theorem cover_2308574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308574 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2308574)
  decide +kernel
#print axioms cover_2308574

def state_2308591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
def hex_2308591 : String := "41440509444305424041050A05054342404441090A41070A0A40444105430909090942404441090A090909"
theorem cover_2308591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308591 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2308591)
  decide +kernel
#print axioms cover_2308591

def state_2308634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 11)))
def hex_2308634 : String := "4041064442060608410944420A434041050A0506420809"
theorem cover_2308634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2308634)
  decide +kernel
#print axioms cover_2308634

def state_2308660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
def hex_2308660 : String := "440509"
theorem cover_2308660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2308660)
  decide +kernel
#print axioms cover_2308660

def state_2308664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
def hex_2308664 : String := "424340410644064342440606060641054405430542090506434041054405060506"
theorem cover_2308664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308664 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2308664)
  decide +kernel
#print axioms cover_2308664

def state_2308697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
def hex_2308697 : String := "42434440410643424440060909070641074307094009074440060909430709"
theorem cover_2308697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_2308697)
  decide +kernel
#print axioms cover_2308697

def state_2308728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
def hex_2308728 : String := "41440505444205054243070907"
theorem cover_2308728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2308728 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2308728)
  decide +kernel
#print axioms cover_2308728
end Mub6.Numerical.CircleFullD0.Forest
