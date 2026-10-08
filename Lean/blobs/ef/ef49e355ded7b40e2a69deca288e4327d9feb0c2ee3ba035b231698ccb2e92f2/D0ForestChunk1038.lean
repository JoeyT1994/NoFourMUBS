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
def state_1549442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 101 else (if j.val < 4 then 40 else 44)))
def hex_1549442 : String := "444341404206440A06424443410905050944430A410905430741064005094005420544054305054106054341400642090740054205440A0A410605"
theorem cover_1549442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1549442)
  decide +kernel
#print axioms cover_1549442

def state_1549501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 44)))
def hex_1549501 : String := "40054205440505"
theorem cover_1549501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549501 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1549501)
  decide +kernel
#print axioms cover_1549501

def state_1549508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 41 else 44)))
def hex_1549508 : String := "410605"
theorem cover_1549508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549508 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1549508)
  decide +kernel
#print axioms cover_1549508

def state_1549511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 45)))
def hex_1549511 : String := "434140064244090644434106400607060840054205440505410605"
theorem cover_1549511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1549511)
  decide +kernel
#print axioms cover_1549511

def state_1549542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
def hex_1549542 : String := "4244430A0643080644430A41060A0A"
theorem cover_1549542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549542 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1549542)
  decide +kernel
#print axioms cover_1549542

def state_1549560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 88)))
def hex_1549560 : String := "4140420A0A4244430A410A0A0A0A400A420A0A"
theorem cover_1549560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549560 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1549560)
  decide +kernel
#print axioms cover_1549560

def state_1549579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 88)))
def hex_1549579 : String := "41400642444341060506064443414006420607400A0A4106400542054405054341060A06404205440505420544430505430A05"
theorem cover_1549579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549579 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1549579)
  decide +kernel
#print axioms cover_1549579

def state_1549630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 89)))
def hex_1549630 : String := "4341400A070A4106404205064244050544430A05430705"
theorem cover_1549630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1549630)
  decide +kernel
#print axioms cover_1549630
end Mub6.Numerical.CircleFullD0.Forest
