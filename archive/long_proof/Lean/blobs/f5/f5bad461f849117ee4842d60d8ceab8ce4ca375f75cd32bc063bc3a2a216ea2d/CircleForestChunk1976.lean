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
def state_2554874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_2554874 : String := "4440054243064144090606434144400542050505054144400542050505054005420505"
theorem cover_2554874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2554874)
  decide +kernel
#print axioms cover_2554874

def state_2554912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 50)))
def hex_2554912 : String := "4243410A444005090541444006090A4440050905430A4144060505"
theorem cover_2554912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554912 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_2554912)
  decide +kernel
#print axioms cover_2554912

def state_2554940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 54 else (if j.val < 4 then 31 else 50)))
def hex_2554940 : String := "43414409400909440940090941094409400909"
theorem cover_2554940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_2554940)
  decide +kernel
#print axioms cover_2554940

def state_2554960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 62 else 50)))
def hex_2554960 : String := "414440420A0A4209430A410A44080A0A444042430A4144080505054209434144400A080A44080541440840050808400542430A410A0505"
theorem cover_2554960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2554960 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2554960)
  decide +kernel
#print axioms cover_2554960

def state_2555016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 92) else (if j.val < 3 then 55 else (if j.val < 4 then 63 else 50)))
def hex_2555016 : String := "44404243410606060642094341060806400A4243410944090A410944090A430A410A444006080A"
theorem cover_2555016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2555016)
  decide +kernel
#print axioms cover_2555016

def state_2555055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 93) else (if j.val < 3 then 55 else (if j.val < 4 then 63 else 50)))
def hex_2555055 : String := "4440424341080508064208084005424341440905054144084005080543410A054144080505"
theorem cover_2555055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2555055)
  decide +kernel
#print axioms cover_2555055

def state_2555092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 51)))
def hex_2555092 : String := "400A4243410A44400506054144400A090A444005090A430A410A05"
theorem cover_2555092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2555092)
  decide +kernel
#print axioms cover_2555092
end Mub6.Numerical.CircleFullD0.Forest
