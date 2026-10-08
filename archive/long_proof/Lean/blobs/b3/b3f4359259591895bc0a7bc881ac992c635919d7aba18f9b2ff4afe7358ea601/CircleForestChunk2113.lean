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
def state_2587684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 77)))
def hex_2587684 : String := "414243400644410ADC0740050A43400544410A08410707054243064005DC434005DC05"
theorem cover_2587684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2587684)
  decide +kernel
#print axioms cover_2587684

def state_2587720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 76)))
def hex_2587720 : String := "4142434044410ADC410ADC444106DC410ADC40440A0A44060A4340444106DC410ADC44064106DC4044064106DC06DC"
theorem cover_2587720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_2587720)
  decide +kernel
#print axioms cover_2587720

def state_2587767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 77)))
def hex_2587767 : String := "4142434044410ADC0744410ADC41070740440A07440A07434044410ADC410ADC4441420A0ADC41420A0ADC4044410ADC07444106DC410707DC"
theorem cover_2587767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2587767)
  decide +kernel
#print axioms cover_2587767

def state_2587826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 38)))
def hex_2587826 : String := "4408410808"
theorem cover_2587826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2587826)
  decide +kernel
#print axioms cover_2587826

def state_2587831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 38)))
def hex_2587831 : String := "44414243094008094308400806424308400809084142434008094044084108084409414243094044090709090943084008094243094008094308400809"
theorem cover_2587831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2587831)
  decide +kernel
#print axioms cover_2587831

def state_2587893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 38)))
def hex_2587893 : String := "44410508410505"
theorem cover_2587893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2587893)
  decide +kernel
#print axioms cover_2587893

def state_2587901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 76)))
def hex_2587901 : String := "41434240440641060806060643424008440909400809424044050544064106430905400506"
theorem cover_2587901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2587901)
  decide +kernel
#print axioms cover_2587901
end Mub6.Numerical.CircleFullD0.Forest
