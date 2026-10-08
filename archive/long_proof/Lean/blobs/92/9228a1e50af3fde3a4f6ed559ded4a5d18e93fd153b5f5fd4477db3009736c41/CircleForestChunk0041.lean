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
def state_9726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 55) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
def hex_9726 : String := "4143424407400707440540414305440542060A4305440509054207440A4043410A080843410A4405090A434207054207440508"
theorem cover_9726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_9726)
  decide +kernel
#print axioms cover_9726

def state_9777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 55 else (if j.val < 4 then 36 else 17)))
def hex_9777 : String := "4440410A050540414243440540410A06410A050A0A4243060806414243050A05420505"
theorem cover_9777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_9777)
  decide +kernel
#print axioms cover_9777

def state_9812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 17)))
def hex_9812 : String := "4142440A4043410642060A0A0A0A424440084307074008434142060A08080A"
theorem cover_9812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_9812)
  decide +kernel
#print axioms cover_9812

def state_9843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 8)))
def hex_9843 : String := "440A4043410A08080A"
theorem cover_9843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_9843)
  decide +kernel
#print axioms cover_9843

def state_9853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
def hex_9853 : String := "420540054344414005064043444205410740050A0505434442060A4205410640070644420509050505"
theorem cover_9853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_9853)
  decide +kernel
#print axioms cover_9853

def state_9895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 9)))
def hex_9895 : String := "400543444240050640434441054208400509050543444106094105094441054206400806050505"
theorem cover_9895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_9895)
  decide +kernel
#print axioms cover_9895

def state_9935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 9)))
def hex_9935 : String := "43444043444105080505434441420507420806410542050744410508050505"
theorem cover_9935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_9935)
  decide +kernel
#print axioms cover_9935
end Mub6.Numerical.CircleFullPrototype.Forest
