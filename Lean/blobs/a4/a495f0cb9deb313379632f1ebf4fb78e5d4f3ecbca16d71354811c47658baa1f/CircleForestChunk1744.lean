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
def state_2291679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 90)))
def hex_2291679 : String := "414006054043424441050541084043080608440541054006050643054244054105C405"
theorem cover_2291679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2291679)
  decide +kernel
#print axioms cover_2291679

def state_2291715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 102) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
def hex_2291715 : String := "4043424406410640060806064305424405410540060506"
theorem cover_2291715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2291715)
  decide +kernel
#print axioms cover_2291715

def state_2291740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 108 else 91)))
def hex_2291740 : String := "4244414006084043420844060A06C441404308060840434244410840070841084007080A4244060A06C444414006054006C4414006430706400AC4"
theorem cover_2291740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2291740)
  decide +kernel
#print axioms cover_2291740

def state_2291799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 109 else 91)))
def hex_2291799 : String := "42440641064006C406"
theorem cover_2291799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2291799)
  decide +kernel
#print axioms cover_2291799

def state_2291808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 35 else (if j.val < 4 then 54 else 91)))
def hex_2291808 : String := "43420844054105C4424441400605C441404342080606430509C4444105C441400605C4"
theorem cover_2291808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291808 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2291808)
  decide +kernel
#print axioms cover_2291808

def state_2291845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 90)))
def hex_2291845 : String := "41064006434207440641060706"
theorem cover_2291845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2291845)
  decide +kernel
#print axioms cover_2291845

def state_2291859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 102) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
def hex_2291859 : String := "400643424406410640064308060606"
theorem cover_2291859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2291859)
  decide +kernel
#print axioms cover_2291859

def state_2291875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
def hex_2291875 : String := "4342070606"
theorem cover_2291875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2291875)
  decide +kernel
#print axioms cover_2291875

def state_2291882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 68 else (if j.val < 4 then 110 else 91)))
def hex_2291882 : String := "4441400643420744050606074140064342440741090744410640060841064006094207064007430707"
theorem cover_2291882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291882 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2291882)
  decide +kernel
#print axioms cover_2291882

def state_2291924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 110 else 182)))
def hex_2291924 : String := "41064006434207440641060706"
theorem cover_2291924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2291924)
  decide +kernel
#print axioms cover_2291924
end Mub6.Numerical.CircleFullD0.Forest
