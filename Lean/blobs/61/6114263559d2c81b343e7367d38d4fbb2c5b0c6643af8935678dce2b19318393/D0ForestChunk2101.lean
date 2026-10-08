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
def state_2584707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_2584707 : String := "404441420843404442430909090A094044424108080942080A08420843400A0A400A4441080A0841080808"
theorem cover_2584707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584707 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_2584707)
  decide +kernel
#print axioms cover_2584707

def state_2584750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_2584750 : String := "4044414208434044420806080808420743400A080A0808"
theorem cover_2584750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_2584750)
  decide +kernel
#print axioms cover_2584750

def state_2584773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_2584773 : String := "4142084344084007080842084344080808"
theorem cover_2584773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2584773)
  decide +kernel
#print axioms cover_2584773

def state_2584790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_2584790 : String := "4441080708"
theorem cover_2584790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584790 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2584790)
  decide +kernel
#print axioms cover_2584790

def state_2584796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2584796 : String := "4142430A074344404206430A0542074344070707050542430705434440064142064306070640410506074440060706"
theorem cover_2584796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584796 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2584796)
  decide +kernel
#print axioms cover_2584796

def state_2584843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2584843 : String := "41420743444207434440070707070707420743444107070707"
theorem cover_2584843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_2584843)
  decide +kernel
#print axioms cover_2584843

def state_2584874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_2584874 : String := "444042410909090940064209440906"
theorem cover_2584874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2584874)
  decide +kernel
#print axioms cover_2584874

def state_2584893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
def hex_2584893 : String := "4144404207080940424306084308084243094407414240060540080942060943094409410909440740420608424306414407060609"
theorem cover_2584893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_2584893)
  decide +kernel
#print axioms cover_2584893

def state_2584948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
def hex_2584948 : String := "4042074308054207430706"
theorem cover_2584948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2584948)
  decide +kernel
#print axioms cover_2584948
end Mub6.Numerical.CircleFullD0.Forest
