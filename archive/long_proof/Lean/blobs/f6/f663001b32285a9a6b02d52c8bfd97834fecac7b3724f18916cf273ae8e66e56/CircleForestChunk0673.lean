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
def state_1462334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 27)))
def hex_1462334 : String := "4241074007430707410A400A430A0A"
theorem cover_1462334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1462334)
  decide +kernel
#print axioms cover_1462334

def state_1462350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
def hex_1462350 : String := "404307074344410705410707440507"
theorem cover_1462350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1462350)
  decide +kernel
#print axioms cover_1462350

def state_1462366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
def hex_1462366 : String := "4344064106064406410806"
theorem cover_1462366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1462366)
  decide +kernel
#print axioms cover_1462366

def state_1462378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_1462378 : String := "4441420606064142400A4341094207064142070A42074406070A42400643410606414207060606"
theorem cover_1462378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1462378)
  decide +kernel
#print axioms cover_1462378

def state_1462418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
def hex_1462418 : String := "414240430605054006430644064241050506420506"
theorem cover_1462418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1462418)
  decide +kernel
#print axioms cover_1462418

def state_1462439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 27)))
def hex_1462439 : String := "4142400843410742074407070840430A084342410A44060A0A42410808410A44060842400843414205440507050540064341060641424405080606"
theorem cover_1462439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1462439)
  decide +kernel
#print axioms cover_1462439

def state_1462499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
def hex_1462499 : String := "414205400944094342414044050544054342054140054405080505054140094407434241400944074342418040094405090707090707090942054005440505"
theorem cover_1462499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 63) (hex := hex_1462499)
  decide +kernel
#print axioms cover_1462499

def state_1462564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 13)))
def hex_1462564 : String := "08"
theorem cover_1462564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462564)
  decide +kernel
#print axioms cover_1462564

def state_1462566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
def hex_1462566 : String := "08"
theorem cover_1462566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462566)
  decide +kernel
#print axioms cover_1462566

def state_1462570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 26)))
def hex_1462570 : String := "08"
theorem cover_1462570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1462570)
  decide +kernel
#print axioms cover_1462570
end Mub6.Numerical.CircleFullD0.Forest
