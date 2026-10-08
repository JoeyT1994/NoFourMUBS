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
def state_2550614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
def hex_2550614 : String := "4243440909094344410540434205054205050541400A05404342090A42090A4342050542050544410540060541404305050540434209064209064342050505"
theorem cover_2550614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550614 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 63) (hex := hex_2550614)
  decide +kernel
#print axioms cover_2550614

def state_2550678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 22)))
def hex_2550678 : String := "4042070742430909434144054043090705440740070941440540060507"
theorem cover_2550678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2550678)
  decide +kernel
#print axioms cover_2550678

def state_2550708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
def hex_2550708 : String := "4243414409090909434144430707430A4007420707440743070741440643070607"
theorem cover_2550708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550708 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2550708)
  decide +kernel
#print axioms cover_2550708

def state_2550742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 23)))
def hex_2550742 : String := "430909"
theorem cover_2550742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2550742)
  decide +kernel
#print axioms cover_2550742

def state_2550748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 46)))
def hex_2550748 : String := "404342094144054007050942074106074342050509"
theorem cover_2550748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550748 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2550748)
  decide +kernel
#print axioms cover_2550748

def state_2550769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 47)))
def hex_2550769 : String := "4043420944410A4007090A4209444140060909410A4007094342094441050941400805400808420944094140090509"
theorem cover_2550769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 47) (hex := hex_2550769)
  decide +kernel
#print axioms cover_2550769

def state_2550816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 23)))
def hex_2550816 : String := "444043090709404342094144074007090709430909"
theorem cover_2550816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550816 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2550816)
  decide +kernel
#print axioms cover_2550816
end Mub6.Numerical.CircleFullD0.Forest
