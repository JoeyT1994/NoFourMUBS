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
def state_1597801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 25)))
def hex_1597801 : String := "4443400841424406054443064106064305414007050508400841420844430808434140070505080843404142050705054008414205444305050505"
theorem cover_1597801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597801 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1597801)
  decide +kernel
#print axioms cover_1597801

def state_1597862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 56 else 50)))
def hex_1597862 : String := "40414407070741444243410606414007064007064309094243414007060741400744420507050743070744424306084306400706420507"
theorem cover_1597862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1597862)
  decide +kernel
#print axioms cover_1597862

def state_1597917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 50)))
def hex_1597917 : String := "404107074144424341400709084140074409420807084341090741090742434140074407070741070743070744420843400741070707420807"
theorem cover_1597917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1597917)
  decide +kernel
#print axioms cover_1597917

def state_1597974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 51)))
def hex_1597974 : String := "43400741424443050705070540074142444307070707420507"
theorem cover_1597974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1597974)
  decide +kernel
#print axioms cover_1597974

def state_1598000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 25)))
def hex_1598000 : String := "444308084340084142054408050508"
theorem cover_1598000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1598000)
  decide +kernel
#print axioms cover_1598000
end Mub6.Numerical.CircleFullD0.Forest
