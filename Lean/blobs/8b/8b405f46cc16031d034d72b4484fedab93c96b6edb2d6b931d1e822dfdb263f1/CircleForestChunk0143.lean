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
def state_971789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 26)))
def hex_971789 : String := "424309404144084243090809440842430908090909"
theorem cover_971789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_971789)
  decide +kernel
#print axioms cover_971789

def state_971812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 18 else 27)))
def hex_971812 : String := "40414243064409060642430944094006090909"
theorem cover_971812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_971812)
  decide +kernel
#print axioms cover_971812

def state_971834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 56 else (if j.val < 4 then 19 else 27)))
def hex_971834 : String := "4344404143064208064309424408400608084109090A44404142080842080841420708424308074308084041054205430A05410542050A"
theorem cover_971834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_971834)
  decide +kernel
#print axioms cover_971834

def state_971889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 57 else (if j.val < 4 then 19 else 27)))
def hex_971889 : String := "43440906444041084208084142080809404106424306440805060A"
theorem cover_971889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971889 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_971889)
  decide +kernel
#print axioms cover_971889

def state_971918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 56 else (if j.val < 4 then 38 else 27)))
def hex_971918 : String := "44404109090940414306424440060A0506430742444007090707410A09"
theorem cover_971918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_971918)
  decide +kernel
#print axioms cover_971918

def state_971948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 56 else (if j.val < 4 then 39 else 54)))
def hex_971948 : String := "40414208084208084142430908094243090609"
theorem cover_971948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_971948)
  decide +kernel
#print axioms cover_971948

def state_971968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 56 else (if j.val < 4 then 39 else 55)))
def hex_971968 : String := "414205434440410607410A0905054243444041050741430905430905050543444007090744400841080805"
theorem cover_971968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_971968)
  decide +kernel
#print axioms cover_971968
end Mub6.Numerical.CircleFullD0.Forest
