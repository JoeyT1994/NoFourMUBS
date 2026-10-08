import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1511583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 61)))
def hex_1511583 : String := "4440410843420644400741060707080606"
theorem cover_1511583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1511583)
  decide +kernel
#print axioms cover_1511583

def state_1511603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
def hex_1511603 : String := "434244404105054106430506050542084440410543050841430508430542060505"
theorem cover_1511603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1511603)
  decide +kernel
#print axioms cover_1511603

def state_1511637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 122)))
def hex_1511637 : String := "4244404143050843050941430542060543424440050A0505424407064409050544400541050505"
theorem cover_1511637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1511637)
  decide +kernel
#print axioms cover_1511637

def state_1511676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 122)))
def hex_1511676 : String := "42444008410843420644090808084440414305080941434244400541050905054208440905434209054209094005410505"
theorem cover_1511676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1511676)
  decide +kernel
#print axioms cover_1511676

def state_1511726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
def hex_1511726 : String := "43420644400506054206444041064306060606"
theorem cover_1511726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1511726)
  decide +kernel
#print axioms cover_1511726

def state_1511746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 122)))
def hex_1511746 : String := "4244404143060643420644400506054206440A06060644404143054205054305424440050A050541430506430842060805"
theorem cover_1511746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1511746)
  decide +kernel
#print axioms cover_1511746
end Mub6.Numerical.CircleFullD0.Forest
