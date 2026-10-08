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
def state_1015636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 23)))
def hex_1015636 : String := "414340444143070743420A050A07444106430642400A0606410606400A444108434208400A06080843400A444341050541420A0505434106050A0A"
theorem cover_1015636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1015636)
  decide +kernel
#print axioms cover_1015636

def state_1015695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 23)))
def hex_1015695 : String := "41430640074442410606060643054044050744424143050A0505420A05"
theorem cover_1015695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1015695)
  decide +kernel
#print axioms cover_1015695

def state_1015725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
def hex_1015725 : String := "44420A4143400744420A0707400744420A07070A0A"
theorem cover_1015725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1015725)
  decide +kernel
#print axioms cover_1015725

def state_1015750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 22)))
def hex_1015750 : String := "404441420A43400A4441420843400A080A0A0A0A0A0A444142084340444108420843400A0808080808420843400A440708400A08410842080A"
theorem cover_1015750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1015750)
  decide +kernel
#print axioms cover_1015750

def state_1015807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 31 else 22)))
def hex_1015807 : String := "400A4441054205434006080505"
theorem cover_1015807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1015807)
  decide +kernel
#print axioms cover_1015807

def state_1015820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
def hex_1015820 : String := "43400A44414207430707070A0A"
theorem cover_1015820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1015820)
  decide +kernel
#print axioms cover_1015820

def state_1015840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
def hex_1015840 : String := "4044420A0707444241434007440907400744090743400A44420A050A0A41074305400744420A05074241070A07"
theorem cover_1015840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1015840)
  decide +kernel
#print axioms cover_1015840
end Mub6.Numerical.CircleFullD0.Forest
