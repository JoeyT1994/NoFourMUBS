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
def state_1495110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 58)))
def hex_1495110 : String := "4442050642404306414405420506064341440509440542050641050540064306414406424006090606"
theorem cover_1495110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1495110)
  decide +kernel
#print axioms cover_1495110

def state_1495153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 116)))
def hex_1495153 : String := "420540064341050505"
theorem cover_1495153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1495153)
  decide +kernel
#print axioms cover_1495153

def state_1495163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 117)))
def hex_1495163 : String := "4043414405420709440542054008054108054341090505"
theorem cover_1495163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1495163)
  decide +kernel
#print axioms cover_1495163

def state_1495187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 84) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 117)))
def hex_1495187 : String := "434144060A44064240064306410A0506414442050642080A44054240060506"
theorem cover_1495187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1495187)
  decide +kernel
#print axioms cover_1495187

def state_1495218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 84) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 117)))
def hex_1495218 : String := "43414442094006090944420506420940060941444205054209400A09440542054043410A0505430905"
theorem cover_1495218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1495218)
  decide +kernel
#print axioms cover_1495218

def state_1495259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 58)))
def hex_1495259 : String := "4405420540064341440542050606410505"
theorem cover_1495259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1495259)
  decide +kernel
#print axioms cover_1495259

def state_1495276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 58)))
def hex_1495276 : String := "4006430641440642400643410A06410A440642400643060A060606"
theorem cover_1495276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 27) (hex := hex_1495276)
  decide +kernel
#print axioms cover_1495276

def state_1495305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
def hex_1495305 : String := "43410A42444006434142070606414207064207064008430A0844060A4142080A420844400643064108064008430A08"
theorem cover_1495305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1495305)
  decide +kernel
#print axioms cover_1495305
end Mub6.Numerical.CircleFullD0.Forest
