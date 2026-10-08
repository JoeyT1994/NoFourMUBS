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
def state_1640574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
def hex_1640574 : String := "434407074442414008090941400643070606424140430744060643440707440942094109094043070643050941400643074406064006430706"
theorem cover_1640574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640574 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1640574)
  decide +kernel
#print axioms cover_1640574

def state_1640631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
def hex_1640631 : String := "430544064240060506"
theorem cover_1640631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640631 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1640631)
  decide +kernel
#print axioms cover_1640631

def state_1640640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 19)))
def hex_1640640 : String := "4143440505440942404143050905094041434407050943050941090505"
theorem cover_1640640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640640 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1640640)
  decide +kernel
#print axioms cover_1640640

def state_1640669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
def hex_1640669 : String := "41430A440A420A40410A430A0A0A43054409420540414305090505"
theorem cover_1640669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1640669)
  decide +kernel
#print axioms cover_1640669

def state_1640697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 4)))
def hex_1640697 : String := "440940414342094408414008070907434209090909"
theorem cover_1640697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1640697)
  decide +kernel
#print axioms cover_1640697

def state_1640719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 8)))
def hex_1640719 : String := "08"
theorem cover_1640719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1640719)
  decide +kernel
#print axioms cover_1640719

def state_1640722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 9)))
def hex_1640722 : String := "43440842414005094043440842094108090509414005434405420A410540050905404344084241054005094105060543440842094109090909"
theorem cover_1640722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1640722)
  decide +kernel
#print axioms cover_1640722

def state_1640779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 9)))
def hex_1640779 : String := "43440942404109090940414344064241400609060606060909"
theorem cover_1640779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640779 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 25) (hex := hex_1640779)
  decide +kernel
#print axioms cover_1640779

def state_1640804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 9)))
def hex_1640804 : String := "414344094209090909"
theorem cover_1640804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640804 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1640804)
  decide +kernel
#print axioms cover_1640804
end Mub6.Numerical.CircleFullD0.Forest
