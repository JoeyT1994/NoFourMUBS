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
def state_2273803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 30)))
def hex_2273803 : String := "434041054405070540410544090941054405424305410540090505"
theorem cover_2273803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2273803)
  decide +kernel
#print axioms cover_2273803

def state_2273830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 31)))
def hex_2273830 : String := "4243400708400808434041050741054407074041080941084442430841080909420809"
theorem cover_2273830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2273830)
  decide +kernel
#print axioms cover_2273830

def state_2273866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
def hex_2273866 : String := "4305440508"
theorem cover_2273866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2273866)
  decide +kernel
#print axioms cover_2273866

def state_2273872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 15)))
def hex_2273872 : String := "4442404105430644050741054305054005054240410807410843070840410506410506"
theorem cover_2273872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2273872)
  decide +kernel
#print axioms cover_2273872

def state_2273909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 30)))
def hex_2273909 : String := "4043410544424005050542084005054108444243400505400808430505420843080843410544054208054105444209054208400505"
theorem cover_2273909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_2273909)
  decide +kernel
#print axioms cover_2273909

def state_2273962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 30)))
def hex_2273962 : String := "404305410544054243050505430505"
theorem cover_2273962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2273962)
  decide +kernel
#print axioms cover_2273962

def state_2273977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 31)))
def hex_2273977 : String := "42404308084308084043410544424005050542080541054442430808054208430508434105440542080541054442080508"
theorem cover_2273977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2273977)
  decide +kernel
#print axioms cover_2273977
end Mub6.Numerical.CircleFullD0.Forest
