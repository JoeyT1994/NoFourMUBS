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
def state_1017317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 177)))
def hex_1017317 : String := "424143404405420805440506404442084143050805420841060A4408084305400A0941430540444241060505060605"
theorem cover_1017317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1017317)
  decide +kernel
#print axioms cover_1017317

def state_1017365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 89)))
def hex_1017365 : String := "4143404442084107434007060808080843400A44420841080508400A440808"
theorem cover_1017365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1017365)
  decide +kernel
#print axioms cover_1017365

def state_1017396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 89)))
def hex_1017396 : String := "414306400706434044424143050A0505420A05064044420A4107050A44424143060809410605420A06"
theorem cover_1017396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1017396)
  decide +kernel
#print axioms cover_1017396

def state_1017438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
def hex_1017438 : String := "444241434006440605050641434007444241074340064406070607074007444205070543400A4442064143400644060706060A0A420A07"
theorem cover_1017438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1017438)
  decide +kernel
#print axioms cover_1017438

def state_1017495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 63 else 88)))
def hex_1017495 : String := "41434044420541054340060805050805434044060A440742074108074006440608"
theorem cover_1017495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1017495)
  decide +kernel
#print axioms cover_1017495
end Mub6.Numerical.CircleFullD0.Forest
