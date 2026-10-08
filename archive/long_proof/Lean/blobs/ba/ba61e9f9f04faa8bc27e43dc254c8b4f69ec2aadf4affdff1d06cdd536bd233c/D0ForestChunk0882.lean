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
def state_1512246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1512246 : String := "4342444041060A060644404143084244080608080840410543054206050642064440414342064408064206440A060A41060A40410643060606"
theorem cover_1512246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512246 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1512246)
  decide +kernel
#print axioms cover_1512246

def state_1512304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 53 else 30)))
def hex_1512304 : String := "440A06"
theorem cover_1512304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1512304)
  decide +kernel
#print axioms cover_1512304

def state_1512312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 106 else 60)))
def hex_1512312 : String := "440540080A"
theorem cover_1512312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1512312)
  decide +kernel
#print axioms cover_1512312

def state_1512318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 120)))
def hex_1512318 : String := "404143420509050505"
theorem cover_1512318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512318 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1512318)
  decide +kernel
#print axioms cover_1512318

def state_1512328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 121)))
def hex_1512328 : String := "4143420844400941434208090809400841084342080908084342440508440940094143090809420509"
theorem cover_1512328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1512328)
  decide +kernel
#print axioms cover_1512328

def state_1512370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 121)))
def hex_1512370 : String := "43424405064440414342054405404107090605430A054143060505404106434206444009060606064205440506"
theorem cover_1512370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_1512370)
  decide +kernel
#print axioms cover_1512370

def state_1512415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 121)))
def hex_1512415 : String := "43420A4405404143420A44094009060A0A0A0A"
theorem cover_1512415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512415 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1512415)
  decide +kernel
#print axioms cover_1512415

def state_1512434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 107 else 60)))
def hex_1512434 : String := "42054405400805"
theorem cover_1512434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512434 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1512434)
  decide +kernel
#print axioms cover_1512434

def state_1512441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
def hex_1512441 : String := "43420A440540414342090909090A05"
theorem cover_1512441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512441 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1512441)
  decide +kernel
#print axioms cover_1512441

def state_1512456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
def hex_1512456 : String := "4143420544054041060A06050A"
theorem cover_1512456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1512456)
  decide +kernel
#print axioms cover_1512456
end Mub6.Numerical.CircleFullD0.Forest
