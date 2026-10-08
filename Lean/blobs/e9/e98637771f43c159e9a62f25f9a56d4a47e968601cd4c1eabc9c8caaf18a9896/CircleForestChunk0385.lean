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
def state_1029880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 99) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
def hex_1029880 : String := "42430544054041420543054405080505430544404142050505054041424305440540080543054440070507420543054405074142050505"
theorem cover_1029880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1029880)
  decide +kernel
#print axioms cover_1029880

def state_1029935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 60)))
def hex_1029935 : String := "41420708420505"
theorem cover_1029935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1029935)
  decide +kernel
#print axioms cover_1029935

def state_1029943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
def hex_1029943 : String := "4142080842434440410505050644404109420943050941080540090843444006050644404142080742430544400A054006080741084205084041060608"
theorem cover_1029943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1029943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1029943)
  decide +kernel
#print axioms cover_1029943

def state_1030004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 61)))
def hex_1030004 : String := "4108420808"
theorem cover_1030004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1030004)
  decide +kernel
#print axioms cover_1030004

def state_1030012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 98) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 60)))
def hex_1030012 : String := "424344400906090943444041420808420A0A410842060640410842080808440609"
theorem cover_1030012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1030012)
  decide +kernel
#print axioms cover_1030012

def state_1030045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 99) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 60)))
def hex_1030045 : String := "4243440A400A414207080A0A4344400A414206060A4041420A43440A070A0A4142080842430506434405050A4406400A06"
theorem cover_1030045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1030045)
  decide +kernel
#print axioms cover_1030045

def state_1030094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 60)))
def hex_1030094 : String := "4142070842074344064041084205060606"
theorem cover_1030094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1030094)
  decide +kernel
#print axioms cover_1030094
end Mub6.Numerical.CircleFullD0.Forest
