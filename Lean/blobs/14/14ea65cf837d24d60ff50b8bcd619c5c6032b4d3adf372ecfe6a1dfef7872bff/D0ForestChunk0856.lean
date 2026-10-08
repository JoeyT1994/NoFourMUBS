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
def state_1506101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1506101 : String := "404143420605064342444041064305060605054206444041430506430542064440050605060506"
theorem cover_1506101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 39) (hex := hex_1506101)
  decide +kernel
#print axioms cover_1506101

def state_1506141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 53 else 30)))
def hex_1506141 : String := "4440080606"
theorem cover_1506141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1506141)
  decide +kernel
#print axioms cover_1506141

def state_1506149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
def hex_1506149 : String := "4342440606444041434206444008410643070608084342084440410808414307054307054008410608084106434206444041060505060640080608"
theorem cover_1506149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1506149)
  decide +kernel
#print axioms cover_1506149

def state_1506210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 82 else (if j.val < 4 then 106 else 60)))
def hex_1506210 : String := "440506"
theorem cover_1506210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1506210)
  decide +kernel
#print axioms cover_1506210

def state_1506215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 120)))
def hex_1506215 : String := "414342440508444041430905050540084143420807084342080708084342054405404109094143420509050505"
theorem cover_1506215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1506215)
  decide +kernel
#print axioms cover_1506215

def state_1506260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 120)))
def hex_1506260 : String := "414342054405404106434205070506054342050505"
theorem cover_1506260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506260 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1506260)
  decide +kernel
#print axioms cover_1506260

def state_1506281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 106 else 121)))
def hex_1506281 : String := "404108434208444008410843420844090808080841064342064440410643420644070606060606"
theorem cover_1506281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1506281)
  decide +kernel
#print axioms cover_1506281

def state_1506320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 107 else 60)))
def hex_1506320 : String := "4205440508"
theorem cover_1506320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506320 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1506320)
  decide +kernel
#print axioms cover_1506320

def state_1506325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 60)))
def hex_1506325 : String := "41064342064440410605050606"
theorem cover_1506325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506325 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1506325)
  decide +kernel
#print axioms cover_1506325

def state_1506338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 61)))
def hex_1506338 : String := "40410643420644400806060606"
theorem cover_1506338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1506338 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1506338)
  decide +kernel
#print axioms cover_1506338
end Mub6.Numerical.CircleFullD0.Forest
