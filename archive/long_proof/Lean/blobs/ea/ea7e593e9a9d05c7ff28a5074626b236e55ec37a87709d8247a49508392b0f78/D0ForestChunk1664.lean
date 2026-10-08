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
def state_2272571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 15)))
def hex_2272571 : String := "42400741434407070807404143064405420705074143060543064406420706"
theorem cover_2272571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2272571)
  decide +kernel
#print axioms cover_2272571

def state_2272603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
def hex_2272603 : String := "4209434405404105090505"
theorem cover_2272603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2272603)
  decide +kernel
#print axioms cover_2272603

def state_2272614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
def hex_2272614 : String := "42430909434440420906094042090609444042410509410543050509404241430908430709414305054306440642400606064209410509"
theorem cover_2272614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272614 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_2272614)
  decide +kernel
#print axioms cover_2272614

def state_2272672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_2272672 : String := "42434405410540420905054407410743404209440509094042090707430507"
theorem cover_2272672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272672 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2272672)
  decide +kernel
#print axioms cover_2272672

def state_2272705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 6)))
def hex_2272705 : String := "440A4041424309440909430544054105420905420A430A440A0A414209050A"
theorem cover_2272705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2272705)
  decide +kernel
#print axioms cover_2272705

def state_2272737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
def hex_2272737 : String := "43444041050A054041420A050A41050A44404107420607074041424344410706064407060742064344074206074407074107420607"
theorem cover_2272737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2272737)
  decide +kernel
#print axioms cover_2272737

def state_2272793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
def hex_2272793 : String := "424409094443054107424407090743410942094044050905410942094044070907"
theorem cover_2272793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2272793)
  decide +kernel
#print axioms cover_2272793
end Mub6.Numerical.CircleFullD0.Forest
