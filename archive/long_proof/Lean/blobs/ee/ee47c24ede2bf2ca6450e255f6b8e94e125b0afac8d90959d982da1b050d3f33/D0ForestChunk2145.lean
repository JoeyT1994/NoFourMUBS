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
def state_2595449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 10)))
def hex_2595449 : String := "444143420606064309424106404406070606414342070742070743424409070942074441060707"
theorem cover_2595449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2595449)
  decide +kernel
#print axioms cover_2595449

def state_2595488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 10)))
def hex_2595488 : String := "40444105050544410642060641084207430705"
theorem cover_2595488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595488 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2595488)
  decide +kernel
#print axioms cover_2595488

def state_2595507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 11)))
def hex_2595507 : String := "4142430707430705424307074344400707074440050707"
theorem cover_2595507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2595507)
  decide +kernel
#print axioms cover_2595507

def state_2595530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 5)))
def hex_2595530 : String := "4441420805424043440505050840054344050505410542444005070505"
theorem cover_2595530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595530 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2595530)
  decide +kernel
#print axioms cover_2595530

def state_2595559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_2595559 : String := "4344414340054206050543404244050505424441060941430905094405054005424405050541054344400507050505"
theorem cover_2595559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595559 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2595559)
  decide +kernel
#print axioms cover_2595559

def state_2595606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_2595606 : String := "440505"
theorem cover_2595606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595606 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2595606)
  decide +kernel
#print axioms cover_2595606

def state_2595609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_2595609 : String := "4344050505"
theorem cover_2595609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2595609)
  decide +kernel
#print axioms cover_2595609

def state_2595622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
def hex_2595622 : String := "40054243414407420A050A0505"
theorem cover_2595622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2595622)
  decide +kernel
#print axioms cover_2595622

def state_2595635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
def hex_2595635 : String := "4042434105050505424341444243400A0A40050A430A0542434006440A064005440A4105054340050A050A414405050543414405050505"
theorem cover_2595635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_2595635)
  decide +kernel
#print axioms cover_2595635

def state_2595690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_2595690 : String := "05"
theorem cover_2595690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595690 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2595690)
  decide +kernel
#print axioms cover_2595690

def state_2595691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
def hex_2595691 : String := "05"
theorem cover_2595691 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595691 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2595691)
  decide +kernel
#print axioms cover_2595691

def state_2595692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_2595692 : String := "424344050A0505"
theorem cover_2595692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595692 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2595692)
  decide +kernel
#print axioms cover_2595692
end Mub6.Numerical.CircleFullD0.Forest
