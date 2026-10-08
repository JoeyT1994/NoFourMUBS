import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_143767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
def hex_143767 : String := "44424041430644070A430744074208054106430644420607064041070541070542404441430609430508410A08440641094305094044050509"
theorem cover_143767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_143767)
  decide +kernel
#print axioms cover_143767

def state_143826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_143826 : String := "41424344070A0A43070A4243440740410706414243070A07424307440606074440064107060A43440640060706"
theorem cover_143826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_143826)
  decide +kernel
#print axioms cover_143826

def state_143872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_143872 : String := "424344074041074243070A074107424307050744050A4344074007074407400A410508"
theorem cover_143872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_143872)
  decide +kernel
#print axioms cover_143872

def state_143910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 8)))
def hex_143910 : String := "400707"
theorem cover_143910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_143910)
  decide +kernel
#print axioms cover_143910

def state_143914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 9)))
def hex_143914 : String := "4142430744070A074243074407404244070A07424407434107070A0707"
theorem cover_143914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_143914)
  decide +kernel
#print axioms cover_143914

def state_143944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 9)))
def hex_143944 : String := "42430744074041074244050A07410542050707"
theorem cover_143944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_143944)
  decide +kernel
#print axioms cover_143944

def state_143963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 9)))
def hex_143963 : String := "42434407400707440740424443070743410707410A40094209074407430707424443074105074341060741054042440505074205074407430707430707"
theorem cover_143963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_143963)
  decide +kernel
#print axioms cover_143963
end Mub6.Numerical.CircleFullPrototype.Forest
