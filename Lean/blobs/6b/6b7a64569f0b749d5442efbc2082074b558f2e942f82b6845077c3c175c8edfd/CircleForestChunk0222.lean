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
def state_990744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_990744 : String := "42404307050540074307444107424007050707"
theorem cover_990744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_990744)
  decide +kernel
#print axioms cover_990744

def state_990765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 22)))
def hex_990765 : String := "434441420643070606410706440606"
theorem cover_990765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_990765)
  decide +kernel
#print axioms cover_990765

def state_990780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 22)))
def hex_990780 : String := "434441420540434441050505050542064006434409054441050605410542054043050505444105420540064344060506410505"
theorem cover_990780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_990780)
  decide +kernel
#print axioms cover_990780

def state_990832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
def hex_990832 : String := "4344410708074441424006430744060707420640064308064107420607"
theorem cover_990832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990832 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_990832)
  decide +kernel
#print axioms cover_990832

def state_990864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 44)))
def hex_990864 : String := "42404307444107424006430707070743444107420508074441420507420540430707434408054441050805410505400743074441070807"
theorem cover_990864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_990864)
  decide +kernel
#print axioms cover_990864

def state_990919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 44)))
def hex_990919 : String := "4240430844084107064344080844414240080908084142054007430505420908400808"
theorem cover_990919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_990919)
  decide +kernel
#print axioms cover_990919

def state_990954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 45)))
def hex_990954 : String := "410742404307074344410508054441054205400705054007430707"
theorem cover_990954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_990954)
  decide +kernel
#print axioms cover_990954
end Mub6.Numerical.CircleFullD0.Forest
