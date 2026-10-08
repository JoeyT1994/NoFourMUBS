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
def state_1306824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 117 else 90)))
def hex_1306824 : String := "40424441434042440541070544050705400606430506414340070540420A07420A440907430506444109430506410743400705064205440541430540070505"
theorem cover_1306824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1306824)
  decide +kernel
#print axioms cover_1306824

def state_1306887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 89) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 90)))
def hex_1306887 : String := "43054042440541430506054406414305060505"
theorem cover_1306887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1306887)
  decide +kernel
#print axioms cover_1306887

def state_1306907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 91)))
def hex_1306907 : String := "434007054042444143070A434042090705400A420A444107050A410743070A44410743074007070742444143050A054107054441070507"
theorem cover_1306907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1306907)
  decide +kernel
#print axioms cover_1306907

def state_1306962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 89) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 91)))
def hex_1306962 : String := "43054042444143050606090805"
theorem cover_1306962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1306962)
  decide +kernel
#print axioms cover_1306962

def state_1306975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
def hex_1306975 : String := "05"
theorem cover_1306975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1306975)
  decide +kernel
#print axioms cover_1306975

def state_1306978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 96 else (if j.val < 4 then 59 else 45)))
def hex_1306978 : String := "444143060606410A06"
theorem cover_1306978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1306978)
  decide +kernel
#print axioms cover_1306978

def state_1306987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 59 else 45)))
def hex_1306987 : String := "44414340420606420644064109060606414340420A44414307060641070A4244410A060A4441434007420A070606410A4340420A07420A070606430606"
theorem cover_1306987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1306987)
  decide +kernel
#print axioms cover_1306987
end Mub6.Numerical.CircleFullD0.Forest
