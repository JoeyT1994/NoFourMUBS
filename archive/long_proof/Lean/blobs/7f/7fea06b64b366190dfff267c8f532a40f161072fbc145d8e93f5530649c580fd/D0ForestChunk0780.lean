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
def state_1487988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
def hex_1487988 : String := "434142060842090841064206440706"
theorem cover_1487988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487988 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1487988)
  decide +kernel
#print axioms cover_1487988

def state_1488004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
def hex_1488004 : String := "4341424440050540434142090742050741420507050944070742054407400707414244054043414205060505064407074205440507"
theorem cover_1488004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1488004)
  decide +kernel
#print axioms cover_1488004

def state_1488057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
def hex_1488057 : String := "43414244050908084142440506440707420508"
theorem cover_1488057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_1488057)
  decide +kernel
#print axioms cover_1488057

def state_1488076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 13)))
def hex_1488076 : String := "444140070A0A414041064206070640414243050543070742054305054142064307060A"
theorem cover_1488076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488076 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1488076)
  decide +kernel
#print axioms cover_1488076

def state_1488111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 13)))
def hex_1488111 : String := "434408414007074042430707070844074107400707"
theorem cover_1488111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488111 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1488111)
  decide +kernel
#print axioms cover_1488111

def state_1488132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_1488132 : String := "4344084105400808440741074042430707074243080707"
theorem cover_1488132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1488132)
  decide +kernel
#print axioms cover_1488132

def state_1488156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_1488156 : String := "430844084140424344080606430844070608404243440841404308060640430841080808440A41060A4308440841064007074243080A08"
theorem cover_1488156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488156 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1488156)
  decide +kernel
#print axioms cover_1488156

def state_1488211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_1488211 : String := "4308440841420840070708"
theorem cover_1488211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1488211)
  decide +kernel
#print axioms cover_1488211

def state_1488226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
def hex_1488226 : String := "05"
theorem cover_1488226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1488226)
  decide +kernel
#print axioms cover_1488226

def state_1488230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 14)))
def hex_1488230 : String := "0A"
theorem cover_1488230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1488230)
  decide +kernel
#print axioms cover_1488230

def state_1488233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
def hex_1488233 : String := "0A"
theorem cover_1488233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1488233)
  decide +kernel
#print axioms cover_1488233

def state_1488236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
def hex_1488236 : String := "430A410A44424006430A410A44060A060A"
theorem cover_1488236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488236 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1488236)
  decide +kernel
#print axioms cover_1488236
end Mub6.Numerical.CircleFullD0.Forest
