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
def state_148395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 54 else 55)))
def hex_148395 : String := "404142094406064209064142448408448408424484094484430606"
theorem cover_148395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_148395)
  decide +kernel
#print axioms cover_148395

def state_148422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 55 else 27)))
def hex_148422 : String := "4440410A4243060606414243840743840A4243840743844406064006410606"
theorem cover_148422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_148422)
  decide +kernel
#print axioms cover_148422

def state_148454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
def hex_148454 : String := "41420A074243070607"
theorem cover_148454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_148454)
  decide +kernel
#print axioms cover_148454

def state_148463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
def hex_148463 : String := "41424307440A0A43070A4243444007414284050540074108424484080744400A41420A0A4243840A430506400606430744400A41090506"
theorem cover_148463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_148463)
  decide +kernel
#print axioms cover_148463

def state_148520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
def hex_148520 : String := "4241090841434408060608"
theorem cover_148520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148520 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_148520)
  decide +kernel
#print axioms cover_148520

def state_148531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
def hex_148531 : String := "4241434408094407094308074143444008424184050540094241090941448409440506444008420741438407084006064344054009420905440806"
theorem cover_148531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_148531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_148531)
  decide +kernel
#print axioms cover_148531
end Mub6.Numerical.CircleFullPrototype.Forest
