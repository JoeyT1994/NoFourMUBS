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
def state_2577728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
def hex_2577728 : String := "4442434041090941064406434208060640090643400706064243400941080809434041090941064406420806400906"
theorem cover_2577728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577728 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2577728)
  decide +kernel
#print axioms cover_2577728

def state_2577778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 92 else (if j.val < 4 then 98 else 34)))
def hex_2577778 : String := "404144070944070941444307074342400708074208400706444307424007070743424009410707074209400707"
theorem cover_2577778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2577778)
  decide +kernel
#print axioms cover_2577778

def state_2577823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 92 else (if j.val < 4 then 99 else 34)))
def hex_2577823 : String := "4009414406084442434007080843070542084340090805"
theorem cover_2577823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2577823)
  decide +kernel
#print axioms cover_2577823

def state_2577846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 93 else (if j.val < 4 then 49 else 34)))
def hex_2577846 : String := "43400741070740054106440542434005060505"
theorem cover_2577846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577846 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2577846)
  decide +kernel
#print axioms cover_2577846

def state_2577866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 92 else (if j.val < 4 then 49 else 35)))
def hex_2577866 : String := "4340094144434208400908080844434208400941080842080943420809084009410808"
theorem cover_2577866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2577866)
  decide +kernel
#print axioms cover_2577866

def state_2577902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 93 else (if j.val < 4 then 98 else 35)))
def hex_2577902 : String := "4041440909440A094144424340070740090643070642434009080843400941060740090644424340070740094107070A42434009410808400908430A0A"
theorem cover_2577902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577902 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_2577902)
  decide +kernel
#print axioms cover_2577902

def state_2577963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 93 else (if j.val < 4 then 99 else 35)))
def hex_2577963 : String := "4005414406084442434005080505420805"
theorem cover_2577963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2577963)
  decide +kernel
#print axioms cover_2577963
end Mub6.Numerical.CircleFullD0.Forest
