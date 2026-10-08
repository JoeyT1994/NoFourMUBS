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
def state_1631979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 36)))
def hex_1631979 : String := "42434106404442064341064007060806064108404408084408064341400842060740424407070742444307080607410840420808420808"
theorem cover_1631979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1631979)
  decide +kernel
#print axioms cover_1631979

def state_1632034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 36)))
def hex_1632034 : String := "4206434106420644400705064108424408064408400806"
theorem cover_1632034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1632034)
  decide +kernel
#print axioms cover_1632034

def state_1632059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 37)))
def hex_1632059 : String := "4306410644404206080606"
theorem cover_1632059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632059 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1632059)
  decide +kernel
#print axioms cover_1632059

def state_1632070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 55 else (if j.val < 4 then 49 else 37)))
def hex_1632070 : String := "43414440070606444007420607400706414408400806444042080842430608430708404243410644080608430708420643074108440808"
theorem cover_1632070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1632070)
  decide +kernel
#print axioms cover_1632070

def state_1632125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 37)))
def hex_1632125 : String := "420643064106444206404306080606"
theorem cover_1632125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632125 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1632125)
  decide +kernel
#print axioms cover_1632125

def state_1632144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 36)))
def hex_1632144 : String := "4140444243054106054341400705054140080840444208074205050542054305414044084205050505444205430505054044420543054105050505"
theorem cover_1632144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632144 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1632144)
  decide +kernel
#print axioms cover_1632144
end Mub6.Numerical.CircleFullD0.Forest
