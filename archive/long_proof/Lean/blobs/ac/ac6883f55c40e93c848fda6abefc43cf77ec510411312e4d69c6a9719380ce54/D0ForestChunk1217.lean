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
def state_1592471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 39) else (if j.val < 3 then 100 else (if j.val < 4 then 56 else 50)))
def hex_1592471 : String := "444143064008060641434042054406050540420544080505430505"
theorem cover_1592471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592471 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1592471)
  decide +kernel
#print axioms cover_1592471

def state_1592498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 39) else (if j.val < 3 then 101 else (if j.val < 4 then 56 else 50)))
def hex_1592498 : String := "4441434009064009064306400906414340424409070706404244090707424406054409410905434042060705404207074205440605"
theorem cover_1592498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592498 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1592498)
  decide +kernel
#print axioms cover_1592498

def state_1592552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 50)))
def hex_1592552 : String := "4208440807"
theorem cover_1592552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1592552)
  decide +kernel
#print axioms cover_1592552

def state_1592558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 39) else (if j.val < 3 then 100 else (if j.val < 4 then 57 else 50)))
def hex_1592558 : String := "44434140080A080A434140080A0A0A"
theorem cover_1592558 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592558 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1592558)
  decide +kernel
#print axioms cover_1592558

def state_1592574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 39) else (if j.val < 3 then 101 else (if j.val < 4 then 57 else 100)))
def hex_1592574 : String := "43414009094008440942430608094140090940084409420809"
theorem cover_1592574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592574 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1592574)
  decide +kernel
#print axioms cover_1592574

def state_1592599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 39) else (if j.val < 3 then 101 else (if j.val < 4 then 57 else 101)))
def hex_1592599 : String := "43414042440907074244434109090A0544094341090741090740420707420544434109054109070541400A420A440941090A4007420A44434109070A0A"
theorem cover_1592599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592599 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_1592599)
  decide +kernel
#print axioms cover_1592599

def state_1592663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 51)))
def hex_1592663 : String := "42444143400742440707074006420A0743070741430706074441070707"
theorem cover_1592663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1592663)
  decide +kernel
#print axioms cover_1592663
end Mub6.Numerical.CircleFullD0.Forest
