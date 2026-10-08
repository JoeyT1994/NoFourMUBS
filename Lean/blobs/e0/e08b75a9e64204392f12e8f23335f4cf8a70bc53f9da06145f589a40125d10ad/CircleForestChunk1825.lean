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
def state_2311177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 44)))
def hex_2311177 : String := "4140440942090944420909424309414009440509094309414009050909"
theorem cover_2311177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311177 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2311177)
  decide +kernel
#print axioms cover_2311177

def state_2311206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 57 else 44)))
def hex_2311206 : String := "414044430906430806444342090942410607064342414006440606084106084241060706400709"
theorem cover_2311206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2311206)
  decide +kernel
#print axioms cover_2311206

def state_2311246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 28 else 45)))
def hex_2311246 : String := "434144404208084243414409080841080843414409080841080840084243080808440908414440084208080808"
theorem cover_2311246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2311246)
  decide +kernel
#print axioms cover_2311246

def state_2311291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 45)))
def hex_2311291 : String := "43414440420808424341440908084108084341440907084108084008420808440908414440084308080808"
theorem cover_2311291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2311291)
  decide +kernel
#print axioms cover_2311291

def state_2311337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 44)))
def hex_2311337 : String := "41404442430541050705424341050941404405430909050943410509414044050505094405420A054009440606"
theorem cover_2311337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311337 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2311337)
  decide +kernel
#print axioms cover_2311337
end Mub6.Numerical.CircleFullD0.Forest
