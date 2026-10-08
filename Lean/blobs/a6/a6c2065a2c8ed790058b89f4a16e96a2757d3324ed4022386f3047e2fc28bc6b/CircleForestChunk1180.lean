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
def state_1583673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 24)))
def hex_1583673 : String := "434041420844084309080841420644064306400906064008414244400841060640084143060808440940410908414309094309094208440840084143060808"
theorem cover_1583673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1583673)
  decide +kernel
#print axioms cover_1583673

def state_1583738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
def hex_1583738 : String := "41420844430740074107070708"
theorem cover_1583738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1583738)
  decide +kernel
#print axioms cover_1583738

def state_1583753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 25)))
def hex_1583753 : String := "4443064008064340414208440607060640414208440808084142440505444306400805430505420505"
theorem cover_1583753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1583753)
  decide +kernel
#print axioms cover_1583753

def state_1583795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 50)))
def hex_1583795 : String := "434041420607060640414244094307070942080741424406430640410906064409430909420644064306400706"
theorem cover_1583795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1583795)
  decide +kernel
#print axioms cover_1583795

def state_1583841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 52 else 51)))
def hex_1583841 : String := "4007414244064305050A06"
theorem cover_1583841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1583841)
  decide +kernel
#print axioms cover_1583841

def state_1583853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
def hex_1583853 : String := "41424407070707"
theorem cover_1583853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1583853)
  decide +kernel
#print axioms cover_1583853

def state_1583860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
def hex_1583860 : String := "4142444340070640414244070707074142064406430507064340070540074142050705444340070A400741090743070742444306400705430505440707"
theorem cover_1583860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1583860)
  decide +kernel
#print axioms cover_1583860
end Mub6.Numerical.CircleFullD0.Forest
