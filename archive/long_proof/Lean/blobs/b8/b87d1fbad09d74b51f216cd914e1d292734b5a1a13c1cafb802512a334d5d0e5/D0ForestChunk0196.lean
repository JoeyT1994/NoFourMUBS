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
def state_984536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 42)))
def hex_984536 : String := "4341444205404341054442054006070541054406054305050544420640434144060606060742054043444105050505054105440605"
theorem cover_984536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_984536)
  decide +kernel
#print axioms cover_984536

def state_984589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 43)))
def hex_984589 : String := "42054043050505"
theorem cover_984589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984589 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_984589)
  decide +kernel
#print axioms cover_984589

def state_984598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 21)))
def hex_984598 : String := "41074442430840410706414442430740064107060707080807"
theorem cover_984598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984598 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 25) (hex := hex_984598)
  decide +kernel
#print axioms cover_984598

def state_984623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
def hex_984623 : String := "414442400743070907074442400643414442064006090744064206064144060906404307410705434107084144090744054206054240074307444107060707"
theorem cover_984623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_984623)
  decide +kernel
#print axioms cover_984623

def state_984688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 21)))
def hex_984688 : String := "44424043074107444240074307090707430A410A440A0A40070607"
theorem cover_984688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984688 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_984688)
  decide +kernel
#print axioms cover_984688

def state_984719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 100 else 42)))
def hex_984719 : String := "4144080708"
theorem cover_984719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_984719)
  decide +kernel
#print axioms cover_984719

def state_984725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 42)))
def hex_984725 : String := "444240430841090843414408070841444240090909094408424043080643080A08400843084109084240074307410744424007430505070707"
theorem cover_984725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984725 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_984725)
  decide +kernel
#print axioms cover_984725
end Mub6.Numerical.CircleFullD0.Forest
