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
def state_1599733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 101)))
def hex_1599733 : String := "4442404143084409420508430544420540090505054041084308090842054041080505"
theorem cover_1599733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1599733)
  decide +kernel
#print axioms cover_1599733

def state_1599768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 119 else 101)))
def hex_1599768 : String := "4442404143440906060A414308440A0505400641084308440806424041060505400608"
theorem cover_1599768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_1599768)
  decide +kernel
#print axioms cover_1599768

def state_1599803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 101)))
def hex_1599803 : String := "434442054043414442050905054144424007050905050505444240410A05054041434442400605060606434442050705069F42054041060505"
theorem cover_1599803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1599803)
  decide +kernel
#print axioms cover_1599803

def state_1599860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 101)))
def hex_1599860 : String := "414308444205080505"
theorem cover_1599860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1599860)
  decide +kernel
#print axioms cover_1599860

def state_1599871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 100)))
def hex_1599871 : String := "4043050805"
theorem cover_1599871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1599871)
  decide +kernel
#print axioms cover_1599871

def state_1599879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 82) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 100)))
def hex_1599879 : String := "44424043060805404341440642064009060641444208094240089F40099F089F42054043414442054043090705050541444240080540079F050505"
theorem cover_1599879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1599879)
  decide +kernel
#print axioms cover_1599879

def state_1599938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 83) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 100)))
def hex_1599938 : String := "44420540080505"
theorem cover_1599938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1599938)
  decide +kernel
#print axioms cover_1599938
end Mub6.Numerical.CircleFullD0.Forest
