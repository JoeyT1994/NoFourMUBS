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
def state_1651859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 54 else 44)))
def hex_1651859 : String := "4440420A0A42434144074009074407400A070743414440090709440A0A0740420A0942434109440A084144070A0A430941440A090A"
theorem cover_1651859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1651859)
  decide +kernel
#print axioms cover_1651859

def state_1651912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 55 else 44)))
def hex_1651912 : String := "4144054005074407400A07"
theorem cover_1651912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651912 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1651912)
  decide +kernel
#print axioms cover_1651912

def state_1651924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 45)))
def hex_1651924 : String := "4243090A43090A"
theorem cover_1651924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1651924)
  decide +kernel
#print axioms cover_1651924

def state_1651933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 54 else 45)))
def hex_1651933 : String := "4144400942064306410644060640090644400A4206430541440A060A400905"
theorem cover_1651933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651933 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1651933)
  decide +kernel
#print axioms cover_1651933

def state_1651964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 55 else 45)))
def hex_1651964 : String := "4144400A42074341070707400A42430607434144400906090A4144070A0A440A0A"
theorem cover_1651964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1651964)
  decide +kernel
#print axioms cover_1651964

def state_1651997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 27 else 45)))
def hex_1651997 : String := "43410944400942430841090A090941444043090543424144070944070A4109440A094207410507400943094241444005070A0A41090A44400A430A0A0A"
theorem cover_1651997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651997 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1651997)
  decide +kernel
#print axioms cover_1651997

def state_1652059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
def hex_1652059 : String := "43074241090A07"
theorem cover_1652059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652059 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1652059)
  decide +kernel
#print axioms cover_1652059

def state_1652067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 23)))
def hex_1652067 : String := "420609"
theorem cover_1652067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1652067)
  decide +kernel
#print axioms cover_1652067
end Mub6.Numerical.CircleFullD0.Forest
