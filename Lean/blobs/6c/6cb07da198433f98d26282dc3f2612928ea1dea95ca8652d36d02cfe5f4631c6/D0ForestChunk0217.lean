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
def state_989525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 10)))
def hex_989525 : String := "4442404308070740080A424043440909440941420540430944090509090940430844410A08410A080A"
theorem cover_989525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_989525)
  decide +kernel
#print axioms cover_989525

def state_989569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
def hex_989569 : String := "40434144420740430A07074240434105440705050540430A410A0A0A440742074043410A070707414407420540434108440708080807434144070A0707"
theorem cover_989569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989569 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_989569)
  decide +kernel
#print axioms cover_989569

def state_989630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 20)))
def hex_989630 : String := "404341440A0A440A4240430A410A070A0A41444240430A07070A424043410A0A410844070A0A0A44074240434144070A07070740430A410A070A430A410A07"
theorem cover_989630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_989630)
  decide +kernel
#print axioms cover_989630

def state_989694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 21)))
def hex_989694 : String := "404341054442054043410A440A0A41440A05440705430A41050705410544420540434105440705410507434105070505434105440A05410505"
theorem cover_989694 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989694 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_989694)
  decide +kernel
#print axioms cover_989694

def state_989753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 21)))
def hex_989753 : String := "41440606444240430A410A440A0A0A0A42404306440A050606"
theorem cover_989753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_989753)
  decide +kernel
#print axioms cover_989753
end Mub6.Numerical.CircleFullD0.Forest
