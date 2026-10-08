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
def state_1475897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 233)))
def hex_1475897 : String := "424043860A06404341444286404305414407050543080A4206400506440A42050541440A42064007060A434106060A"
theorem cover_1475897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475897 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1475897)
  decide +kernel
#print axioms cover_1475897

def state_1475944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 117)))
def hex_1475944 : String := "4240434106064106060640434144428605050541444240070640054305070844424005060505434106444206400506064106444206404305060606"
theorem cover_1475944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475944 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1475944)
  decide +kernel
#print axioms cover_1475944

def state_1476004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 58)))
def hex_1476004 : String := "4442404186430909418643070A404143444205050544428609050941430744084286400507430744084240050605424041430505050640054143050505"
theorem cover_1476004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1476004)
  decide +kernel
#print axioms cover_1476004

def state_1476066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 116)))
def hex_1476066 : String := "42404143860A0A0A40414344428609428605440A4240070A400543050709414344420A08428640414305050541430606080A0A"
theorem cover_1476066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1476066)
  decide +kernel
#print axioms cover_1476066
end Mub6.Numerical.CircleFullD0.Forest
