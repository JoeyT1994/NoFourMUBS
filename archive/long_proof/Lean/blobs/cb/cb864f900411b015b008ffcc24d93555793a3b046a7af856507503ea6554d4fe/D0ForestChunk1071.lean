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
def state_1557461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 86)))
def hex_1557461 : String := "42434106064140444243064140094406420A060709424309414044090944420A05420A054009440609094406424306414044060505060640090609"
theorem cover_1557461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557461 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1557461)
  decide +kernel
#print axioms cover_1557461

def state_1557522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 82 else 87)))
def hex_1557522 : String := "410506"
theorem cover_1557522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1557522)
  decide +kernel
#print axioms cover_1557522

def state_1557527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 87)))
def hex_1557527 : String := "44424341050941404442080505054009444243090A094243090A09094243054105404408084442430508050505"
theorem cover_1557527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557527 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1557527)
  decide +kernel
#print axioms cover_1557527

def state_1557572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 120) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 87)))
def hex_1557572 : String := "4442430541054044064243050A0506054243050505"
theorem cover_1557572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557572 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1557572)
  decide +kernel
#print axioms cover_1557572

def state_1557593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 87)))
def hex_1557593 : String := "4044094243094140094409424309410809090909440642430641404406424306410A0606060606"
theorem cover_1557593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1557593)
  decide +kernel
#print axioms cover_1557593

def state_1557632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 107 else (if j.val < 4 then 41 else 87)))
def hex_1557632 : String := "4305410509"
theorem cover_1557632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557632 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1557632)
  decide +kernel
#print axioms cover_1557632

def state_1557637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 43)))
def hex_1557637 : String := "44064243064140440605050606"
theorem cover_1557637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557637 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1557637)
  decide +kernel
#print axioms cover_1557637

def state_1557650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 43)))
def hex_1557650 : String := "40440642430641400906060606"
theorem cover_1557650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557650 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1557650)
  decide +kernel
#print axioms cover_1557650

def state_1557663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
def hex_1557663 : String := "4244064306414042440643060906060606"
theorem cover_1557663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1557663)
  decide +kernel
#print axioms cover_1557663

def state_1557680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
def hex_1557680 : String := "4042060606"
theorem cover_1557680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1557680)
  decide +kernel
#print axioms cover_1557680

def state_1557686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
def hex_1557686 : String := "4140420507424306050605"
theorem cover_1557686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557686 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1557686)
  decide +kernel
#print axioms cover_1557686

def state_1557702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 42)))
def hex_1557702 : String := "4140074207434406410A060705"
theorem cover_1557702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1557702)
  decide +kernel
#print axioms cover_1557702
end Mub6.Numerical.CircleFullD0.Forest
