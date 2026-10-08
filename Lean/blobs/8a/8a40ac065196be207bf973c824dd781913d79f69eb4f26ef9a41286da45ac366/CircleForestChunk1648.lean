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
def state_2268756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
def hex_2268756 : String := "4042434105054144050A4440094305094009430909430541050942430541054407404305070705"
theorem cover_2268756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2268756)
  decide +kernel
#print axioms cover_2268756

def state_2268795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
def hex_2268795 : String := "4042434105440908410A4440094309060643054105094243410544050841084440430806080643050A"
theorem cover_2268795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2268795)
  decide +kernel
#print axioms cover_2268795

def state_2268838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
def hex_2268838 : String := "424341090941090909"
theorem cover_2268838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2268838)
  decide +kernel
#print axioms cover_2268838

def state_2268848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 90 else (if j.val < 4 then 45 else 56)))
def hex_2268848 : String := "434144054042430509050544400942430509054009424309090941444043090943050740430942060943424106060542060744400943090940094342060906"
theorem cover_2268848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2268848)
  decide +kernel
#print axioms cover_2268848

def state_2268911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 91 else (if j.val < 4 then 45 else 56)))
def hex_2268911 : String := "43410509410909"
theorem cover_2268911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2268911)
  decide +kernel
#print axioms cover_2268911

def state_2268918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
def hex_2268918 : String := "40424341090941090609424341444042430906094243050605404206090844400942434106060609400606414440060606440606434109094144090909"
theorem cover_2268918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2268918)
  decide +kernel
#print axioms cover_2268918

def state_2268980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 29)))
def hex_2268980 : String := "4341084007084108400606"
theorem cover_2268980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268980 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2268980)
  decide +kernel
#print axioms cover_2268980
end Mub6.Numerical.CircleFullD0.Forest
