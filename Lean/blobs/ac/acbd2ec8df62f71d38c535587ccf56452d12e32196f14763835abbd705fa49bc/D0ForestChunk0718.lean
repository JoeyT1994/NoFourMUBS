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
def state_1473255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 59)))
def hex_1473255 : String := "4240430A410A44424005430A0705054341094442090A0A41094442094043090909090A"
theorem cover_1473255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1473255)
  decide +kernel
#print axioms cover_1473255

def state_1473290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
def hex_1473290 : String := "4341094442404307090707424009070741094442094043084109080842094043090909"
theorem cover_1473290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1473290)
  decide +kernel
#print axioms cover_1473290

def state_1473326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 14)))
def hex_1473326 : String := "44420940434409094409090909"
theorem cover_1473326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473326 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1473326)
  decide +kernel
#print axioms cover_1473326

def state_1473341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 28)))
def hex_1473341 : String := "404341440509440542400705400743410505054105054341050505"
theorem cover_1473341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1473341)
  decide +kernel
#print axioms cover_1473341

def state_1473371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 28)))
def hex_1473371 : String := "44424006050642404341094406070709404341060641060609"
theorem cover_1473371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473371 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1473371)
  decide +kernel
#print axioms cover_1473371

def state_1473396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 28)))
def hex_1473396 : String := "44424006050642404341440607440607074341094405420A400643080541050A4006434144064209060841440642090644064240060A06"
theorem cover_1473396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473396 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1473396)
  decide +kernel
#print axioms cover_1473396

def state_1473451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 28)))
def hex_1473451 : String := "4144054207400709444205054207400643414405070A07"
theorem cover_1473451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473451 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1473451)
  decide +kernel
#print axioms cover_1473451

def state_1473474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 28)))
def hex_1473474 : String := "43410944054240430905054043084109080841094405420543404105050505"
theorem cover_1473474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473474 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1473474)
  decide +kernel
#print axioms cover_1473474
end Mub6.Numerical.CircleFullD0.Forest
