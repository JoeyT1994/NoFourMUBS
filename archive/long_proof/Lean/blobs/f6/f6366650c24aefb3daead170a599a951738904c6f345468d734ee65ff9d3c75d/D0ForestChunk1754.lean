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
def state_2294089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
def hex_2294089 : String := "43424144060A4443424006410544050A0A0643424006440A0A0A0A0A420606"
theorem cover_2294089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_2294089)
  decide +kernel
#print axioms cover_2294089

def state_2294123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
def hex_2294123 : String := "44054043050A05"
theorem cover_2294123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2294123)
  decide +kernel
#print axioms cover_2294123

def state_2294131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 44)))
def hex_2294131 : String := "40430542410544054006050505"
theorem cover_2294131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294131 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2294131)
  decide +kernel
#print axioms cover_2294131

def state_2294145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
def hex_2294145 : String := "4342444105430505414305400A054308400A084405074244410A400A43050A410A400A43424441050A0A0A0A440A0A"
theorem cover_2294145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2294145)
  decide +kernel
#print axioms cover_2294145

def state_2294192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
def hex_2294192 : String := "430542440541054043054244054107400A05070505"
theorem cover_2294192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_2294192)
  decide +kernel
#print axioms cover_2294192

def state_2294213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 22)))
def hex_2294213 : String := "410544054043050705"
theorem cover_2294213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294213 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2294213)
  decide +kernel
#print axioms cover_2294213

def state_2294224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
def hex_2294224 : String := "44064006420606"
theorem cover_2294224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2294224)
  decide +kernel
#print axioms cover_2294224

def state_2294232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
def hex_2294232 : String := "400642430506430505"
theorem cover_2294232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294232 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2294232)
  decide +kernel
#print axioms cover_2294232

def state_2294241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
def hex_2294241 : String := "404206064243444105404243050606054140060540424344410640060541060A06430A06424307444105C44106C4074406064344050706"
theorem cover_2294241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2294241)
  decide +kernel
#print axioms cover_2294241

def state_2294296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
def hex_2294296 : String := "41064440060540064243070606"
theorem cover_2294296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294296 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2294296)
  decide +kernel
#print axioms cover_2294296

def state_2294310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
def hex_2294310 : String := "434244410A430A0A0A0A0A"
theorem cover_2294310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294310 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2294310)
  decide +kernel
#print axioms cover_2294310
end Mub6.Numerical.CircleFullD0.Forest
