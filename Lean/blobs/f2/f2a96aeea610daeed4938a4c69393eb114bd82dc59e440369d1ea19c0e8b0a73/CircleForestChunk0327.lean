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
def state_1015885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
def hex_1015885 : String := "400744424143400708050A410743400744420A07070A420A07"
theorem cover_1015885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1015885)
  decide +kernel
#print axioms cover_1015885

def state_1015910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
def hex_1015910 : String := "43400A44420A050A0A"
theorem cover_1015910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1015910)
  decide +kernel
#print axioms cover_1015910

def state_1015919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
def hex_1015919 : String := "41074305400744424143050A050707"
theorem cover_1015919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1015919)
  decide +kernel
#print axioms cover_1015919

def state_1015934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 45)))
def hex_1015934 : String := "4241070A07"
theorem cover_1015934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1015934)
  decide +kernel
#print axioms cover_1015934

def state_1015946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 84 else (if j.val < 4 then 60 else 88)))
def hex_1015946 : String := "414340440908080843404442414305080505420A414305090544424108050542084106054044420A41090A0A444208410843050808"
theorem cover_1015946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1015946)
  decide +kernel
#print axioms cover_1015946

def state_1015999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 85 else (if j.val < 4 then 60 else 88)))
def hex_1015999 : String := "41094305404442410905054241070A0744424109050542410643050806"
theorem cover_1015999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015999 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1015999)
  decide +kernel
#print axioms cover_1015999

def state_1016028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 89)))
def hex_1016028 : String := "42410843400A080841074306400706"
theorem cover_1016028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1016028)
  decide +kernel
#print axioms cover_1016028

def state_1016043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
def hex_1016043 : String := "44424108434044080806084106430540444208050606420806"
theorem cover_1016043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1016043)
  decide +kernel
#print axioms cover_1016043

def state_1016070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 88)))
def hex_1016070 : String := "42410843400A080841094340444241090A09420A074442410843404409080808094208410743400706084044420A090A4442080908"
theorem cover_1016070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1016070)
  decide +kernel
#print axioms cover_1016070

def state_1016123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 89)))
def hex_1016123 : String := "4208410743400708400708"
theorem cover_1016123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1016123)
  decide +kernel
#print axioms cover_1016123
end Mub6.Numerical.CircleFullD0.Forest
