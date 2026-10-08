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
def state_2248976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 24)))
def hex_2248976 : String := "44410540060541074042434406410642400643050606440641064240064306060606424344054105054407410740424344050907060705"
theorem cover_2248976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_2248976)
  decide +kernel
#print axioms cover_2248976

def state_2249031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 24)))
def hex_2249031 : String := "444106400607410740424344064106420606060607"
theorem cover_2249031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_2249031)
  decide +kernel
#print axioms cover_2249031

def state_2249052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
def hex_2249052 : String := "07"
theorem cover_2249052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2249052)
  decide +kernel
#print axioms cover_2249052

def state_2249053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 24)))
def hex_2249053 : String := "07"
theorem cover_2249053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2249053)
  decide +kernel
#print axioms cover_2249053

def state_2249058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 25)))
def hex_2249058 : String := "44404209060709"
theorem cover_2249058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2249058)
  decide +kernel
#print axioms cover_2249058

def state_2249067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
def hex_2249067 : String := "424344414206064240430A440609090641094209404309090944414206064240434406094406090906410909430606"
theorem cover_2249067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2249067)
  decide +kernel
#print axioms cover_2249067

def state_2249114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
def hex_2249114 : String := "424344410740420905070944410740420907070907"
theorem cover_2249114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2249114)
  decide +kernel
#print axioms cover_2249114

def state_2249135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 51)))
def hex_2249135 : String := "404209434144060944404243060606420906404209060941440609444042090642090609420943410744070907"
theorem cover_2249135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2249135)
  decide +kernel
#print axioms cover_2249135

def state_2249181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 25)))
def hex_2249181 : String := "440709"
theorem cover_2249181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2249181)
  decide +kernel
#print axioms cover_2249181

def state_2249185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 50)))
def hex_2249185 : String := "404243444106424043440609060906094441064205060906424344410740420907070944070907"
theorem cover_2249185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2249185)
  decide +kernel
#print axioms cover_2249185
end Mub6.Numerical.CircleFullD0.Forest
