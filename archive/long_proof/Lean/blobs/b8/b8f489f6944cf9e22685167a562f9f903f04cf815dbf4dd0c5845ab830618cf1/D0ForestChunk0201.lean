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
def state_985680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 205 else 171)))
def hex_985680 : String := "41424043440A05440905430A05404307090A4240434408414205080844064142054006050643440A0A44410A0A410542050A4043084408410908430A0A"
theorem cover_985680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_985680)
  decide +kernel
#print axioms cover_985680

def state_985741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 85)))
def hex_985741 : String := "430A44410A0A410A0A"
theorem cover_985741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_985741)
  decide +kernel
#print axioms cover_985741

def state_985753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 68 else (if j.val < 4 then 103 else 84)))
def hex_985753 : String := "40434144090544420640060742054006430505410544060543410544070508"
theorem cover_985753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_985753)
  decide +kernel
#print axioms cover_985753

def state_985784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 69 else (if j.val < 4 then 103 else 84)))
def hex_985784 : String := "40434109444240090A09424009090941094442400607090943410A0A4108440742080A"
theorem cover_985784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985784 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_985784)
  decide +kernel
#print axioms cover_985784

def state_985819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 85)))
def hex_985819 : String := "4205404341094409094105440905434105440A0508"
theorem cover_985819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985819 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_985819)
  decide +kernel
#print axioms cover_985819

def state_985841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 84)))
def hex_985841 : String := "4240060740434144420640060742400643410A060740434109440506410906430A0A4406420640060741440642064006434109060606434144070A0707"
theorem cover_985841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_985841)
  decide +kernel
#print axioms cover_985841

def state_985903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 103 else 85)))
def hex_985903 : String := "4043444142054006050641050544060543444105070505"
theorem cover_985903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_985903)
  decide +kernel
#print axioms cover_985903
end Mub6.Numerical.CircleFullD0.Forest
