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
def state_1519839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_1519839 : String := "43444008070744400841080940084108430708"
theorem cover_1519839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1519839)
  decide +kernel
#print axioms cover_1519839

def state_1519858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1519858 : String := "41424344090A44094243090909434440410707070744094344090709424309440909430709"
theorem cover_1519858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1519858)
  decide +kernel
#print axioms cover_1519858

def state_1519896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1519896 : String := "414243084440420A0A4208070A43074440430744410707070707424307444008084041070707430744404107070707"
theorem cover_1519896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1519896)
  decide +kernel
#print axioms cover_1519896

def state_1519943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1519943 : String := "41424307444243074440070707070707424307444107070707"
theorem cover_1519943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1519943)
  decide +kernel
#print axioms cover_1519943

def state_1519970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1519970 : String := "414243440809440509434405094405094243440840080844084041420808080843440840410943080909440840414405094408420843094041090808410508"
theorem cover_1519970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1519970)
  decide +kernel
#print axioms cover_1519970

def state_1520033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1520033 : String := "414243440542434409094405090944054244050905430905424344410842080841420809420809084344410508094405410508"
theorem cover_1520033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520033 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1520033)
  decide +kernel
#print axioms cover_1520033
end Mub6.Numerical.CircleFullD0.Forest
