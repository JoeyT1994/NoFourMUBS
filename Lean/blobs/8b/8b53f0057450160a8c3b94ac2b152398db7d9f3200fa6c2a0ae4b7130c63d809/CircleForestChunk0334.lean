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
def state_1017529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 88)))
def hex_1017529 : String := "43404442410943404409420A074409420809820942410543400744080705074442410843404442080908080809420841074340440906068282"
theorem cover_1017529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1017529)
  decide +kernel
#print axioms cover_1017529

def state_1017590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 176)))
def hex_1017590 : String := "41434044060A4442064143400644064206090606420A4143400A44420A090A0A0A820A"
theorem cover_1017590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1017590)
  decide +kernel
#print axioms cover_1017590

def state_1017625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 176)))
def hex_1017625 : String := "414340444241090508420A074442410905410905424143404409074409098243050A41070582430582"
theorem cover_1017625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1017625)
  decide +kernel
#print axioms cover_1017625

def state_1017666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 177)))
def hex_1017666 : String := "420A4143400744420A0707820A"
theorem cover_1017666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017666 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1017666)
  decide +kernel
#print axioms cover_1017666

def state_1017681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 176)))
def hex_1017681 : String := "4143404442074143404407420709078207424108074143404442084108050808824340050582078207"
theorem cover_1017681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1017681)
  decide +kernel
#print axioms cover_1017681

def state_1017722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 176)))
def hex_1017722 : String := "4143404442410905054241434044094209054409420805824305824109054442070542414340440506060843058241060582430582"
theorem cover_1017722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017722 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1017722)
  decide +kernel
#print axioms cover_1017722
end Mub6.Numerical.CircleFullD0.Forest
