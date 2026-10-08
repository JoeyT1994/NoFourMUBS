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
def state_2594279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 18)))
def hex_2594279 : String := "4041064406424340414405050A06400506434005060506"
theorem cover_2594279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2594279)
  decide +kernel
#print axioms cover_2594279

def state_2594302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 18)))
def hex_2594302 : String := "434041064406430942400506050606"
theorem cover_2594302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2594302)
  decide +kernel
#print axioms cover_2594302

def state_2594324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 96 else (if j.val < 4 then 96 else 38)))
def hex_2594324 : String := "40DC414406084409420809"
theorem cover_2594324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2594324)
  decide +kernel
#print axioms cover_2594324

def state_2594335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 96 else (if j.val < 4 then 97 else 38)))
def hex_2594335 : String := "404144064208434044050506064442434041440608444208054207050840410505064340410505060642434007070743404105054107074005074106440608"
theorem cover_2594335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2594335)
  decide +kernel
#print axioms cover_2594335

def state_2594399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 96 else 38)))
def hex_2594399 : String := "40414406434240444106094143090543090509404405050642404405050606444309424041050506064342400A09094240410505410909400509410609"
theorem cover_2594399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2594399)
  decide +kernel
#print axioms cover_2594399

def state_2594460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 97 else 38)))
def hex_2594460 : String := "404106440642434005410505050506"
theorem cover_2594460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2594460)
  decide +kernel
#print axioms cover_2594460

def state_2594476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 96 else (if j.val < 4 then 48 else 39)))
def hex_2594476 : String := "4340410707410744420743090707400707"
theorem cover_2594476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2594476)
  decide +kernel
#print axioms cover_2594476
end Mub6.Numerical.CircleFullD0.Forest
