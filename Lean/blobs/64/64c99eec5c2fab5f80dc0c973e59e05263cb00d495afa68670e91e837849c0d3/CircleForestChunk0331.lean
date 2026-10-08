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
def state_1016834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 176)))
def hex_1016834 : String := "4241434044080808084340444207050A440708404442060A0A084109430540444241090505420A4109054442410805054208410905"
theorem cover_1016834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1016834)
  decide +kernel
#print axioms cover_1016834

def state_1016887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 177)))
def hex_1016887 : String := "42410843400A080841434044090606084340444205050A440506400A44420841080508"
theorem cover_1016887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1016887)
  decide +kernel
#print axioms cover_1016887

def state_1016922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
def hex_1016922 : String := "44420841084305404407080708"
theorem cover_1016922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016922 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1016922)
  decide +kernel
#print axioms cover_1016922

def state_1016937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 176)))
def hex_1016937 : String := "42410843400A08064109434044424106064109430506420A0A444207410943054044060A074208410843400A08084044060A4442074108434006070608"
theorem cover_1016937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1016937)
  decide +kernel
#print axioms cover_1016937

def state_1016998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 177)))
def hex_1016998 : String := "4208410843400A080A"
theorem cover_1016998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1016998)
  decide +kernel
#print axioms cover_1016998

def state_1017007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
def hex_1017007 : String := "440808"
theorem cover_1017007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1017007)
  decide +kernel
#print axioms cover_1017007

def state_1017010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
def hex_1017010 : String := "434044420705420A4143050A0544074207414305404405080805404442074143400A44070A400644060A0A0A44074207410807"
theorem cover_1017010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1017010)
  decide +kernel
#print axioms cover_1017010
end Mub6.Numerical.CircleFullD0.Forest
