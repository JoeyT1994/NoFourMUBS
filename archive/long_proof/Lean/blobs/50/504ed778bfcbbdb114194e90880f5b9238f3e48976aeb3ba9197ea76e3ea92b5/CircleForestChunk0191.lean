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
def state_983356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 40)))
def hex_983356 : String := "4240060740434144090944060641440606064341440742074009070707"
theorem cover_983356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_983356)
  decide +kernel
#print axioms cover_983356

def state_983386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 51 else 41)))
def hex_983386 : String := "40434105060505"
theorem cover_983386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_983386)
  decide +kernel
#print axioms cover_983386

def state_983394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 41)))
def hex_983394 : String := "4341440909444206400643410906064240060540094341094406090941440805440606"
theorem cover_983394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_983394)
  decide +kernel
#print axioms cover_983394

def state_983429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 41)))
def hex_983429 : String := "4341444205400908054442074043410A070707420540434109440A054105440705430A054108440705"
theorem cover_983429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_983429)
  decide +kernel
#print axioms cover_983429

def state_983470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 20)))
def hex_983470 : String := "44074240060740434144060606064341440742074043414407420540430A06070707070707"
theorem cover_983470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 37) (hex := hex_983470)
  decide +kernel
#print axioms cover_983470

def state_983508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 20)))
def hex_983508 : String := "434144054243400741070840094109440509054405084144424006434109050905424043090643410944090909400943090944054240064341440506050605"
theorem cover_983508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_983508)
  decide +kernel
#print axioms cover_983508

def state_983574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 40)))
def hex_983574 : String := "424043054144050905430A410A0A05"
theorem cover_983574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_983574)
  decide +kernel
#print axioms cover_983574
end Mub6.Numerical.CircleFullD0.Forest
