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
def state_1603356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 117 else 100)))
def hex_1603356 : String := "41444240094309090942400743410707410707400709444240074143060806400741070742400741070507"
theorem cover_1603356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_1603356)
  decide +kernel
#print axioms cover_1603356

def state_1603399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 58 else 100)))
def hex_1603399 : String := "404307074341094409074109440907"
theorem cover_1603399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1603399)
  decide +kernel
#print axioms cover_1603399

def state_1603414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 101)))
def hex_1603414 : String := "4240074341444240070507074407054144420707070740074341070707"
theorem cover_1603414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603414 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1603414)
  decide +kernel
#print axioms cover_1603414

def state_1603444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 50)))
def hex_1603444 : String := "44424009410943094405060542400641064344420706060606"
theorem cover_1603444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1603444)
  decide +kernel
#print axioms cover_1603444

def state_1603471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 100)))
def hex_1603471 : String := "40434107070743414442400743410909410907094240074307070744420840074107074207074144424007434107070807420706440807"
theorem cover_1603471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1603471)
  decide +kernel
#print axioms cover_1603471

def state_1603526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 100)))
def hex_1603526 : String := "400743410907410607"
theorem cover_1603526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1603526)
  decide +kernel
#print axioms cover_1603526

def state_1603535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 101)))
def hex_1603535 : String := "424007434107074106074006430706"
theorem cover_1603535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603535 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1603535)
  decide +kernel
#print axioms cover_1603535

def state_1603550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 50)))
def hex_1603550 : String := "4341094409400742070741064440050906"
theorem cover_1603550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1603550)
  decide +kernel
#print axioms cover_1603550
end Mub6.Numerical.CircleFullD0.Forest
