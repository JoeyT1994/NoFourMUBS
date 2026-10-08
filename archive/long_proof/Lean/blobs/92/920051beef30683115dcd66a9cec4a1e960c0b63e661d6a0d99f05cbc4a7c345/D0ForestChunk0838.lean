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
def state_1501849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
def hex_1501849 : String := "41434244060806420806430606"
theorem cover_1501849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501849 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1501849)
  decide +kernel
#print axioms cover_1501849

def state_1501862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
def hex_1501862 : String := "41434244400643410A064142050705400A430A4108880A424440080508444006070A4388424405400841080544064006410906"
theorem cover_1501862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1501862)
  decide +kernel
#print axioms cover_1501862

def state_1501913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
def hex_1501913 : String := "434406424006880644420506424041430905094143880505400641430642050606"
theorem cover_1501913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1501913)
  decide +kernel
#print axioms cover_1501913

def state_1501946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 29)))
def hex_1501946 : String := "4442050542084041434409080843090541434442050542084008414342084405080843420509054405084344054205400941050505"
theorem cover_1501946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501946 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 53) (hex := hex_1501946)
  decide +kernel
#print axioms cover_1501946

def state_1501999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 14)))
def hex_1501999 : String := "4405400841440508440508"
theorem cover_1501999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1501999)
  decide +kernel
#print axioms cover_1501999

def state_1502012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 28)))
def hex_1502012 : String := "06"
theorem cover_1502012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1502012)
  decide +kernel
#print axioms cover_1502012

def state_1502014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
def hex_1502014 : String := "41424306090606"
theorem cover_1502014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502014 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1502014)
  decide +kernel
#print axioms cover_1502014

def state_1502024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 29)))
def hex_1502024 : String := "444006430641424406070606400A430A410A42444006070A07"
theorem cover_1502024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1502024)
  decide +kernel
#print axioms cover_1502024
end Mub6.Numerical.CircleFullD0.Forest
