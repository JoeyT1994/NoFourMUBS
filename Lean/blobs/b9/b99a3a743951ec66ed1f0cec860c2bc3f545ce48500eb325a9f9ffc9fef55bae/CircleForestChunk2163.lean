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
def state_2599800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
def hex_2599800 : String := "4144430540420508054305400805444305404205070543054042050705"
theorem cover_2599800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599800 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_2599800)
  decide +kernel
#print axioms cover_2599800

def state_2599831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 30)))
def hex_2599831 : String := "404243410644064042050605060642430507430A06"
theorem cover_2599831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2599831)
  decide +kernel
#print axioms cover_2599831

def state_2599852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 31)))
def hex_2599852 : String := "40424341084440080508414406084440064207060A43080642430507434108444305400805084106444006064042430806064207430806"
theorem cover_2599852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2599852)
  decide +kernel
#print axioms cover_2599852

def state_2599908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 30)))
def hex_2599908 : String := "404243440941400905090943444106074140064307060706424305440941420540090509430A44064140060640420906424305080A"
theorem cover_2599908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2599908)
  decide +kernel
#print axioms cover_2599908

def state_2599963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 50 else (if j.val < 4 then 25 else 31)))
def hex_2599963 : String := "43414440420508054008054440090540420507054144400942094309060A09"
theorem cover_2599963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2599963)
  decide +kernel
#print axioms cover_2599963

def state_2599994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 51 else (if j.val < 4 then 25 else 31)))
def hex_2599994 : String := "4341444007430742080608074144064006424308060644400642090640420905424341444008420808084407400742080709430705"
theorem cover_2599994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2599994)
  decide +kernel
#print axioms cover_2599994
end Mub6.Numerical.CircleFullD0.Forest
