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
def state_2280681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 60)))
def hex_2280681 : String := "40414405424305050544424305400A050542434041050A41050A40414405090A41050A4305400905410544054243054041050A0505"
theorem cover_2280681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2280681)
  decide +kernel
#print axioms cover_2280681

def state_2280736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 112) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 60)))
def hex_2280736 : String := "4407424340410544054206050507430507"
theorem cover_2280736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280736 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2280736)
  decide +kernel
#print axioms cover_2280736

def state_2280753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 60)))
def hex_2280753 : String := "44424340414405420A050841050840410706074308074243404144420609090941444206054206430506440A06400606434009410508400907"
theorem cover_2280753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2280753)
  decide +kernel
#print axioms cover_2280753

def state_2280810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 60)))
def hex_2280810 : String := "410744074243404107440706070707"
theorem cover_2280810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2280810)
  decide +kernel
#print axioms cover_2280810

def state_2280825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 60)))
def hex_2280825 : String := "4340050540410544080907"
theorem cover_2280825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2280825)
  decide +kernel
#print axioms cover_2280825

def state_2280840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 112) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
def hex_2280840 : String := "444243400505404105440509410544054205050542434008084008084305400905"
theorem cover_2280840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2280840)
  decide +kernel
#print axioms cover_2280840

def state_2280874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 122)))
def hex_2280874 : String := "42434041090741440542430540050505440A07404109094144424305060542434006050643050644420A4309094206094340094105094009410509"
theorem cover_2280874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2280874)
  decide +kernel
#print axioms cover_2280874
end Mub6.Numerical.CircleFullD0.Forest
