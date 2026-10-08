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
def state_1584185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 36) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 102)))
def hex_1584185 : String := "4143424440430609064043050A05440940074307410905420A440940074143090943070743424406054440070607420A4440074109074007410705"
theorem cover_1584185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1584185)
  decide +kernel
#print axioms cover_1584185

def state_1584244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 36) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 103)))
def hex_1584244 : String := "40414307070741434205444007050742440A054440074143070607074305420507"
theorem cover_1584244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1584244)
  decide +kernel
#print axioms cover_1584244

def state_1584277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 54 else 51)))
def hex_1584277 : String := "44404143070707414342440907070943074244070707400741430742070707"
theorem cover_1584277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1584277)
  decide +kernel
#print axioms cover_1584277

def state_1584308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 55 else 51)))
def hex_1584308 : String := "4244400A0A40060A4440430706434109424407070741060640064341060606"
theorem cover_1584308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1584308)
  decide +kernel
#print axioms cover_1584308

def state_1584339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
def hex_1584339 : String := "4342444008414342050742084407070840074143050505444007414307070707424440080A4007410A08444007414307070707"
theorem cover_1584339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1584339)
  decide +kernel
#print axioms cover_1584339

def state_1584390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
def hex_1584390 : String := "420844400841434208440808080840084143420807420844070708"
theorem cover_1584390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1584390)
  decide +kernel
#print axioms cover_1584390
end Mub6.Numerical.CircleFullD0.Forest
