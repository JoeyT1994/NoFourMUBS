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
def state_2250091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 108)))
def hex_2250091 : String := "40434106074106074341064207064142440640080806424440064306410607074406400643064106420706"
theorem cover_2250091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2250091)
  decide +kernel
#print axioms cover_2250091

def state_2250134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 109)))
def hex_2250134 : String := "404307414207444006430641060707074341080741420844400808084207444007430741080707"
theorem cover_2250134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250134 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2250134)
  decide +kernel
#print axioms cover_2250134

def state_2250174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 108)))
def hex_2250174 : String := "06"
theorem cover_2250174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250174 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2250174)
  decide +kernel
#print axioms cover_2250174

def state_2250176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 109)))
def hex_2250176 : String := "434106420706414244064007434106074106070642440607440640074306410607"
theorem cover_2250176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2250176)
  decide +kernel
#print axioms cover_2250176

def state_2250210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 182 else 109)))
def hex_2250210 : String := "414244060805424406400743074108074406400606"
theorem cover_2250210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2250210)
  decide +kernel
#print axioms cover_2250210

def state_2250232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 206) else (if j.val < 3 then 87 else (if j.val < 4 then 183 else 109)))
def hex_2250232 : String := "424406404308080806"
theorem cover_2250232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2250232)
  decide +kernel
#print axioms cover_2250232

def state_2250242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 207) else (if j.val < 3 then 174 else (if j.val < 4 then 183 else 109)))
def hex_2250242 : String := "4440430641060743410642070641064244060706404307414207440607074341080741420844400606084207444007BE07"
theorem cover_2250242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2250242)
  decide +kernel
#print axioms cover_2250242

def state_2250291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 207) else (if j.val < 3 then 175 else (if j.val < 4 then 183 else 109)))
def hex_2250291 : String := "440640434106074106420706434106424406070641420A064244064007BE440606"
theorem cover_2250291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2250291)
  decide +kernel
#print axioms cover_2250291
end Mub6.Numerical.CircleFullD0.Forest
