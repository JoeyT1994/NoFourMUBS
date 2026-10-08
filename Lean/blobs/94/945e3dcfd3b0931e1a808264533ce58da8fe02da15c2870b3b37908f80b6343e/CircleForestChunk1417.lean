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
def state_1640813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_1640813 : String := "43424440434105050905404305414205050505444043054109050540430541444205400605050505424409404109090944094041434409420906060609"
theorem cover_1640813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1640813)
  decide +kernel
#print axioms cover_1640813

def state_1640881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 10)))
def hex_1640881 : String := "40094442064109430540070609"
theorem cover_1640881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1640881)
  decide +kernel
#print axioms cover_1640881

def state_1640898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
def hex_1640898 : String := "43094240084406064005440509"
theorem cover_1640898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1640898)
  decide +kernel
#print axioms cover_1640898

def state_1640911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
def hex_1640911 : String := "434240094406060942404408094441084342064408060841064306420640080640440809444108434244080844080908410909"
theorem cover_1640911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1640911)
  decide +kernel
#print axioms cover_1640911

def state_1640962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
def hex_1640962 : String := "41430905430942400944410543090509400944410543070509"
theorem cover_1640962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1640962)
  decide +kernel
#print axioms cover_1640962

def state_1640987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 21)))
def hex_1640987 : String := "420909"
theorem cover_1640987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1640987)
  decide +kernel
#print axioms cover_1640987

def state_1640992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
def hex_1640992 : String := "414306404206440606064306404206444143060843404206440606064008420608410643064042064406060606"
theorem cover_1640992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_1640992)
  decide +kernel
#print axioms cover_1640992
end Mub6.Numerical.CircleFullD0.Forest
