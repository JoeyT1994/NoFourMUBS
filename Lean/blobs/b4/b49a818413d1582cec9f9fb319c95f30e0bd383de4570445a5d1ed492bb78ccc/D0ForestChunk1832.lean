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
def state_2312807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
def hex_2312807 : String := "4044410542430540440541050A054305400505414209054243404441050A41090A0A404441060A0909434044050705404406060944054105420A05"
theorem cover_2312807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2312807)
  decide +kernel
#print axioms cover_2312807

def state_2312867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 22)))
def hex_2312867 : String := "4340440A0A0A40440A0A0A"
theorem cover_2312867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2312867)
  decide +kernel
#print axioms cover_2312867

def state_2312881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
def hex_2312881 : String := "4243410506410A0A43410506410540444305420A05430A0A0A"
theorem cover_2312881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2312881)
  decide +kernel
#print axioms cover_2312881

def state_2312906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
def hex_2312906 : String := "4243410A06410A0A434140440507050641404443420A05420A4105404405070543074241070A07440507404443060A43060A06"
theorem cover_2312906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312906 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2312906)
  decide +kernel
#print axioms cover_2312906

def state_2312957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
def hex_2312957 : String := "444205050A"
theorem cover_2312957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2312957)
  decide +kernel
#print axioms cover_2312957

def state_2312965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 29 else 44)))
def hex_2312965 : String := "43410A0A410A07"
theorem cover_2312965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2312965)
  decide +kernel
#print axioms cover_2312965

def state_2312973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 44)))
def hex_2312973 : String := "4140440542430A0A430541054044050A05054044420A43410509410A07420A43410A0A410A0A0A"
theorem cover_2312973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2312973)
  decide +kernel
#print axioms cover_2312973

def state_2313012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 59 else 44)))
def hex_2313012 : String := "41404442430A0A43050642430A0A4341050A41060A44050A4044074207410A070A"
theorem cover_2313012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2313012)
  decide +kernel
#print axioms cover_2313012

def state_2313046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 29 else 45)))
def hex_2313046 : String := "43410A0A410A0A"
theorem cover_2313046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2313046)
  decide +kernel
#print axioms cover_2313046
end Mub6.Numerical.CircleFullD0.Forest
