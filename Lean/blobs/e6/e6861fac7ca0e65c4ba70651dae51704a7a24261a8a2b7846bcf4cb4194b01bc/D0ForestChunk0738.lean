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
def state_1478012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 195 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 117)))
def hex_1478012 : String := "43410944080641094442060806"
theorem cover_1478012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1478012)
  decide +kernel
#print axioms cover_1478012

def state_1478025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
def hex_1478025 : String := "44420A4043080A0842404341440A060A0A0640434144080544080541440A4206050A43080A"
theorem cover_1478025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1478025)
  decide +kernel
#print axioms cover_1478025

def state_1478062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 91 else 58)))
def hex_1478062 : String := "4144420A404341440A4209404341070707090A0A0A42404341060A070640434144420940070909440A42064007064107074341090A0A0A"
theorem cover_1478062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478062 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1478062)
  decide +kernel
#print axioms cover_1478062

def state_1478118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 45 else 59)))
def hex_1478118 : String := "4043414442064007060644420640430505060641070706"
theorem cover_1478118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478118 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1478118)
  decide +kernel
#print axioms cover_1478118

def state_1478142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 59)))
def hex_1478142 : String := "4341444240430505430606400543050505444240054305050505414442074007434105050707444207400543050705"
theorem cover_1478142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1478142)
  decide +kernel
#print axioms cover_1478142

def state_1478189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 59)))
def hex_1478189 : String := "43414442064043410505060606444206404305050606414442064043060606064442064043410605070606"
theorem cover_1478189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478189 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1478189)
  decide +kernel
#print axioms cover_1478189
end Mub6.Numerical.CircleFullD0.Forest
