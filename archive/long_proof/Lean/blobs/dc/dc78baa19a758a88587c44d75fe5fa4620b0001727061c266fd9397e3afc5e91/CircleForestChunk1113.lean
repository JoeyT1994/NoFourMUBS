import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1567519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
def hex_1567519 : String := "4043444206080606434442094140050540434441050A080843440A05090909"
theorem cover_1567519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1567519)
  decide +kernel
#print axioms cover_1567519

def state_1567551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
def hex_1567551 : String := "434442414006434442050606060541400643444208080844080640074344074241080541084007440708074206410640064443420608060644420641060706"
theorem cover_1567551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1567551)
  decide +kernel
#print axioms cover_1567551

def state_1567617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 22 else 22)))
def hex_1567617 : String := "4140434442090A09090940054344050905"
theorem cover_1567617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1567617)
  decide +kernel
#print axioms cover_1567617

def state_1567635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 22)))
def hex_1567635 : String := "40434442410A0A410A0A42410840080A410840080A440A0A43440A42090A0A"
theorem cover_1567635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1567635)
  decide +kernel
#print axioms cover_1567635

def state_1567669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 44 else 44)))
def hex_1567669 : String := "424140070A0541404344070A070A07"
theorem cover_1567669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1567669)
  decide +kernel
#print axioms cover_1567669

def state_1567684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 44 else 45)))
def hex_1567684 : String := "42414044434205080508440A0A0541404443080808440A0A40440743420808074443420A0A074342410A05410A440A40080A0A"
theorem cover_1567684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1567684)
  decide +kernel
#print axioms cover_1567684

def state_1567735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 45 else 22)))
def hex_1567735 : String := "4407420A0A"
theorem cover_1567735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567735 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1567735)
  decide +kernel
#print axioms cover_1567735

def state_1567740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 22)))
def hex_1567740 : String := "4344420A410A400A0642410A440A0A410A440A400A0A0A"
theorem cover_1567740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1567740)
  decide +kernel
#print axioms cover_1567740

def state_1567764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 22 else 23)))
def hex_1567764 : String := "09"
theorem cover_1567764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1567764)
  decide +kernel
#print axioms cover_1567764

def state_1567766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 22 else 23)))
def hex_1567766 : String := "4440434208080609400809"
theorem cover_1567766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1567766)
  decide +kernel
#print axioms cover_1567766
end Mub6.Numerical.CircleFullD0.Forest
