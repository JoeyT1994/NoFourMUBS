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
def state_1571939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_1571939 : String := "42434405054405054344400841420543054405050540080544400841420544400805400805054008410905"
theorem cover_1571939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1571939)
  decide +kernel
#print axioms cover_1571939

def state_1571982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1571982 : String := "42094340094109444208090840410608414442094309060644420943090909"
theorem cover_1571982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1571982)
  decide +kernel
#print axioms cover_1571982

def state_1572013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_1572013 : String := "44420A440A404106084143420A440A060643420A4440080A40064106050A42400641064309054006410643444206060606"
theorem cover_1572013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1572013)
  decide +kernel
#print axioms cover_1572013

def state_1572062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1572062 : String := "42434405050A434441424308084308440840084205080841424308400805430808084441420A4408080841420540060805"
theorem cover_1572062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572062 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1572062)
  decide +kernel
#print axioms cover_1572062

def state_1572113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_1572113 : String := "4344050544400A0505"
theorem cover_1572113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1572113)
  decide +kernel
#print axioms cover_1572113

def state_1572126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_1572126 : String := "434405054441070505"
theorem cover_1572126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1572126)
  decide +kernel
#print axioms cover_1572126

def state_1572136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
def hex_1572136 : String := "444106064142054305404405050505"
theorem cover_1572136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1572136)
  decide +kernel
#print axioms cover_1572136
end Mub6.Numerical.CircleFullD0.Forest
