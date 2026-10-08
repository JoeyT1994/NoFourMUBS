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
def state_2313054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 58 else 45)))
def hex_2313054 : String := "4140444243410A0A0A43410540440A080A4140080540080A424341070808430708440A0A4044420A430A410A08420A4308080A"
theorem cover_2313054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313054 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2313054)
  decide +kernel
#print axioms cover_2313054

def state_2313105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 59 else 45)))
def hex_2313105 : String := "41404442430A08434108080808440A0A4044420A410808080A"
theorem cover_2313105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313105 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2313105)
  decide +kernel
#print axioms cover_2313105

def state_2313130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
def hex_2313130 : String := "44420A430A0A420A430A0A"
theorem cover_2313130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2313130)
  decide +kernel
#print axioms cover_2313130

def state_2313142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
def hex_2313142 : String := "42434044414307420907430A0A41074306420A07440A41070640444109420A430A084109420808440A0943074044410742430909070707"
theorem cover_2313142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2313142)
  decide +kernel
#print axioms cover_2313142

def state_2313198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 23)))
def hex_2313198 : String := "4340440A060640440A050A"
theorem cover_2313198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313198 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2313198)
  decide +kernel
#print axioms cover_2313198

def state_2313210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 23)))
def hex_2313210 : String := "40444243064140440A0A0A064341070641074044060606424306410705430607440A06"
theorem cover_2313210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2313210)
  decide +kernel
#print axioms cover_2313210

def state_2313245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 23)))
def hex_2313245 : String := "404442434140080A0A41080843414044420807070740080A4108084243080543080844420A430A0A420A430709"
theorem cover_2313245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313245 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2313245)
  decide +kernel
#print axioms cover_2313245
end Mub6.Numerical.CircleFullD0.Forest
