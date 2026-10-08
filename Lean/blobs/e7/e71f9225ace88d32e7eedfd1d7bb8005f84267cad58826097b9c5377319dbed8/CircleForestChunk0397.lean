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
def state_1032829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 150 else 250)))
def hex_1032829 : String := "40414243440A070A07420A0741424305440A400A410505430944400705074243050A09"
theorem cover_1032829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1032829)
  decide +kernel
#print axioms cover_1032829

def state_1032864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 150 else 251)))
def hex_1032864 : String := "404107074142434440410505054006410505444041420A070A410842050540074108420807074243440540060544400A0540410707414205070507"
theorem cover_1032864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1032864)
  decide +kernel
#print axioms cover_1032864

def state_1032923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 125)))
def hex_1032923 : String := "44400A41420A43440A4007070A0A4041420A070A41424344400A41080A4041070741084208070A4307074243440A400A410A0A0A430707"
theorem cover_1032923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1032923)
  decide +kernel
#print axioms cover_1032923

def state_1032978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 205) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
def hex_1032978 : String := "424344400A0540410A0841420505050A434440410A08094041424307070708414243054405400A050909440A400A41420A0A0A"
theorem cover_1032978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1032978)
  decide +kernel
#print axioms cover_1032978

def state_1033031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 75 else 125)))
def hex_1033031 : String := "4344054041420543050805054440414206060A06404142094308064243050643440540410A05050A4108420506"
theorem cover_1033031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1033031)
  decide +kernel
#print axioms cover_1033031
end Mub6.Numerical.CircleFullD0.Forest
