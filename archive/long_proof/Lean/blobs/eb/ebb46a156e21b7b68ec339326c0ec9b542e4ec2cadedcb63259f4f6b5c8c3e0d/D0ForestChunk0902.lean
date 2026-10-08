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
def state_1517032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 63)))
def hex_1517032 : String := "4142430506430544400507054243444105400542060505444140420643050606404243060643050906064305444140050740420905424305070705"
theorem cover_1517032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1517032)
  decide +kernel
#print axioms cover_1517032

def state_1517093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 62)))
def hex_1517093 : String := "4142084309084243090809"
theorem cover_1517093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1517093)
  decide +kernel
#print axioms cover_1517093

def state_1517104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 62)))
def hex_1517104 : String := "414243444041084205090606084344074041070707440540080642434441050541404206090640090A054344094140090740090744054140090709"
theorem cover_1517104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1517104)
  decide +kernel
#print axioms cover_1517104

def state_1517164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 63)))
def hex_1517164 : String := "41084208434409400541050808"
theorem cover_1517164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1517164)
  decide +kernel
#print axioms cover_1517164

def state_1517177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 63)))
def hex_1517177 : String := "41420643444041064206070606064243444106400806060643444140424309060742060740094206074140420605064042060506444140080640080606"
theorem cover_1517177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1517177)
  decide +kernel
#print axioms cover_1517177

def state_1517239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
def hex_1517239 : String := "42064344404106420607060606"
theorem cover_1517239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1517239)
  decide +kernel
#print axioms cover_1517239

def state_1517253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 27 else 31)))
def hex_1517253 : String := "43444106400A060606"
theorem cover_1517253 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517253 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1517253)
  decide +kernel
#print axioms cover_1517253
end Mub6.Numerical.CircleFullD0.Forest
