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
def state_2248731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
def hex_2248731 : String := "4442404306064344064106420906440641064209060642404341090741090543410944090941090940430606434106440642090641064406420906"
theorem cover_2248731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248731 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2248731)
  decide +kernel
#print axioms cover_2248731

def state_2248790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 25)))
def hex_2248790 : String := "4144064209064442400643440641064205064406050642400509400643410644064205064106440505"
theorem cover_2248790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248790 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2248790)
  decide +kernel
#print axioms cover_2248790

def state_2248831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 25)))
def hex_2248831 : String := "06"
theorem cover_2248831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2248831)
  decide +kernel
#print axioms cover_2248831

def state_2248833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
def hex_2248833 : String := "43440542404105430507050507"
theorem cover_2248833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248833 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2248833)
  decide +kernel
#print axioms cover_2248833

def state_2248848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 24)))
def hex_2248848 : String := "4240440541054305404244050505050505"
theorem cover_2248848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2248848)
  decide +kernel
#print axioms cover_2248848

def state_2248868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
def hex_2248868 : String := "43054440420905054042080609"
theorem cover_2248868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2248868)
  decide +kernel
#print axioms cover_2248868

def state_2248882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 44 else 25)))
def hex_2248882 : String := "440540420905420905"
theorem cover_2248882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2248882)
  decide +kernel
#print axioms cover_2248882

def state_2248892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 45 else 50)))
def hex_2248892 : String := "404243440541050A444105420A05410942090A0642430544050905"
theorem cover_2248892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248892 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2248892)
  decide +kernel
#print axioms cover_2248892

def state_2248919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 45 else 51)))
def hex_2248919 : String := "40420943410544054042090505414405094440064209054042090609420943054105440509"
theorem cover_2248919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2248919)
  decide +kernel
#print axioms cover_2248919

def state_2248956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 25)))
def hex_2248956 : String := "41054305440509"
theorem cover_2248956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248956 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2248956)
  decide +kernel
#print axioms cover_2248956

def state_2248963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 25)))
def hex_2248963 : String := "404105430544050505"
theorem cover_2248963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248963 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2248963)
  decide +kernel
#print axioms cover_2248963
end Mub6.Numerical.CircleFullD0.Forest
