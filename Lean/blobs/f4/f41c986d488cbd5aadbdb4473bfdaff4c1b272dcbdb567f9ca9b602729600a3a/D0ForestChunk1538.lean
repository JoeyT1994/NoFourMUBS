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
def state_2242685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2242685 : String := "4243440540080844090943444005410705404108420843050541420809420905444041054243050705054041420807424308084305074107420907"
theorem cover_2242685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2242685)
  decide +kernel
#print axioms cover_2242685

def state_2242746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2242746 : String := "4142430A064344050544060A4243444105430506410A4344400642410543050605400A42410A43440A090A0A44060A4406410606430A444106060A"
theorem cover_2242746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242746 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 59) (hex := hex_2242746)
  decide +kernel
#print axioms cover_2242746

def state_2242806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_2242806 : String := "424344050544064006440505430744400642060707"
theorem cover_2242806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_2242806)
  decide +kernel
#print axioms cover_2242806

def state_2242829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
def hex_2242829 : String := "440540414305054344054241054307440507074405424144050A444006430505400A43070941074440060507410543054405424041054405070505"
theorem cover_2242829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_2242829)
  decide +kernel
#print axioms cover_2242829

def state_2242888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_2242888 : String := "4440064105054041440506440642060641054405424340410544050905400605430706"
theorem cover_2242888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242888 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_2242888)
  decide +kernel
#print axioms cover_2242888
end Mub6.Numerical.CircleFullD0.Forest
