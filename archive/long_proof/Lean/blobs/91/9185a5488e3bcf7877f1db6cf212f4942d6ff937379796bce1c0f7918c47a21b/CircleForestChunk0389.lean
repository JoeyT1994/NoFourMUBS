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
def state_1030870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 100) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 61)))
def hex_1030870 : String := "4344404142430508430508420505410505404108424305440508430544404108050508084440410606064041084243440608064344060806410606"
theorem cover_1030870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1030870)
  decide +kernel
#print axioms cover_1030870

def state_1030930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 61)))
def hex_1030930 : String := "4344054041050505440640410A0A06"
theorem cover_1030930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1030930)
  decide +kernel
#print axioms cover_1030930

def state_1030945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 61)))
def hex_1030945 : String := "43444041050505404142054305440540410505054205050544400A06404142434406400A060643440640410A0A0606420A0A410606"
theorem cover_1030945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1030945)
  decide +kernel
#print axioms cover_1030945

def state_1030999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 30)))
def hex_1030999 : String := "43440505440A400A07"
theorem cover_1030999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030999 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1030999)
  decide +kernel
#print axioms cover_1030999

def state_1031008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 30)))
def hex_1031008 : String := "4344094041420543054405400805080544400A41420509094041420A434408400841420509080A08414243050A43440505440A40410A0A4106054243050A09"
theorem cover_1031008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1031008)
  decide +kernel
#print axioms cover_1031008

def state_1031073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
def hex_1031073 : String := "42430609434440060606444041094206064142094306074243440A060943070740064106420606"
theorem cover_1031073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031073 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1031073)
  decide +kernel
#print axioms cover_1031073
end Mub6.Numerical.CircleFullD0.Forest
