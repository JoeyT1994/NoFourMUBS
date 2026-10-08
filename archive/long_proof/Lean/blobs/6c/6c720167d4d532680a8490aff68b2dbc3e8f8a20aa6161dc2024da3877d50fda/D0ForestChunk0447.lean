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
def state_1044893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
def hex_1044893 : String := "40424407414340440742070A07404407080707440A410A4305404207050742070A"
theorem cover_1044893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1044893)
  decide +kernel
#print axioms cover_1044893

def state_1044926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
def hex_1044926 : String := "404244074108074441090741430A400908434042074407410A05074042074407414340420A090782070707"
theorem cover_1044926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 43) (hex := hex_1044926)
  decide +kernel
#print axioms cover_1044926

def state_1044969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
def hex_1044969 : String := "07"
theorem cover_1044969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1044969)
  decide +kernel
#print axioms cover_1044969

def state_1044970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
def hex_1044970 : String := "07"
theorem cover_1044970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1044970)
  decide +kernel
#print axioms cover_1044970

def state_1044971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
def hex_1044971 : String := "07"
theorem cover_1044971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1044971)
  decide +kernel
#print axioms cover_1044971

def state_1044977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
def hex_1044977 : String := "4143404441064305420705410606064044414342070608430707410843420806084407084340440543054142070505074044074143420709090707"
theorem cover_1044977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1044977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1044977)
  decide +kernel
#print axioms cover_1044977

def state_1045036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
def hex_1045036 : String := "414306404442410643050506060643054005440506"
theorem cover_1045036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045036 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1045036)
  decide +kernel
#print axioms cover_1045036

def state_1045057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 23)))
def hex_1045057 : String := "424143060843404443064106094306060640444143420806080941080A084106430606"
theorem cover_1045057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1045057)
  decide +kernel
#print axioms cover_1045057

def state_1045092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
def hex_1045092 : String := "4442410607064241060606"
theorem cover_1045092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045092 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1045092)
  decide +kernel
#print axioms cover_1045092

def state_1045106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
def hex_1045106 : String := "414340440808080843404407090707"
theorem cover_1045106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045106 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1045106)
  decide +kernel
#print axioms cover_1045106
end Mub6.Numerical.CircleFullD0.Forest
