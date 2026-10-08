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
def state_1048751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
def hex_1048751 : String := "40414206434406404142060606060642434406060643090606"
theorem cover_1048751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1048751)
  decide +kernel
#print axioms cover_1048751

def state_1048778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
def hex_1048778 : String := "42434440414208084243440608064344060806064041084208080844064041050606434440410842430906074108064041084208070844064041050506"
theorem cover_1048778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048778 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1048778)
  decide +kernel
#print axioms cover_1048778

def state_1048842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
def hex_1048842 : String := "404142434406404106060606430906424309060906"
theorem cover_1048842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048842 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1048842)
  decide +kernel
#print axioms cover_1048842

def state_1048865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
def hex_1048865 : String := "42434440414208084243440684064309064106064041088408440640410884064344404107070940070844064041050506"
theorem cover_1048865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1048865)
  decide +kernel
#print axioms cover_1048865

def state_1048914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
def hex_1048914 : String := "42434440414243090609090984440684430944064041070706"
theorem cover_1048914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048914 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1048914)
  decide +kernel
#print axioms cover_1048914

def state_1048939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
def hex_1048939 : String := "414208084243090609"
theorem cover_1048939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1048939)
  decide +kernel
#print axioms cover_1048939

def state_1048948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 31)))
def hex_1048948 : String := "44064041060606"
theorem cover_1048948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1048948)
  decide +kernel
#print axioms cover_1048948

def state_1048955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 31)))
def hex_1048955 : String := "4344094041424307070709094406404142050542060606"
theorem cover_1048955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048955 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1048955)
  decide +kernel
#print axioms cover_1048955

def state_1048978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
def hex_1048978 : String := "414206084206430906"
theorem cover_1048978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048978 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1048978)
  decide +kernel
#print axioms cover_1048978
end Mub6.Numerical.CircleFullD0.Forest
