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
def state_973962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 27)))
def hex_973962 : String := "43440940414243074408070707414243094408404109070909094408400A4142440643400841080605440843400808080A"
theorem cover_973962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973962 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_973962)
  decide +kernel
#print axioms cover_973962

def state_974011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 27)))
def hex_974011 : String := "4344054007094408400A4144084243090843090809"
theorem cover_974011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974011 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_974011)
  decide +kernel
#print axioms cover_974011

def state_974032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
def hex_974032 : String := "4243090A43050A"
theorem cover_974032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_974032)
  decide +kernel
#print axioms cover_974032

def state_974039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
def hex_974039 : String := "41424309440640414206440643090606060909"
theorem cover_974039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_974039)
  decide +kernel
#print axioms cover_974039

def state_974058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 13)))
def hex_974058 : String := "440A4206400A414342064406060606"
theorem cover_974058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974058 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_974058)
  decide +kernel
#print axioms cover_974058

def state_974073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
def hex_974073 : String := "43440942400A064009090A"
theorem cover_974073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_974073)
  decide +kernel
#print axioms cover_974073

def state_974084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 13)))
def hex_974084 : String := "40414344054240074143050A07050A0A4143440542404143054405424041440507070905050905440842400A4143440542404108080909080A400A0543050A"
theorem cover_974084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 63) (hex := hex_974084)
  decide +kernel
#print axioms cover_974084

def state_974147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 6)))
def hex_974147 : String := "440A0A"
theorem cover_974147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_974147)
  decide +kernel
#print axioms cover_974147

def state_974151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_974151 : String := "4143424440094109430709054440064106070609434244414007430742050707050742440A05440A410907"
theorem cover_974151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_974151)
  decide +kernel
#print axioms cover_974151
end Mub6.Numerical.CircleFullD0.Forest
