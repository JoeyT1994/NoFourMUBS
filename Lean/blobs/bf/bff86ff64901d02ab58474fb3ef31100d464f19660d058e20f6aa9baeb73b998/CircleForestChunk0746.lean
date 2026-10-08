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
def state_1479938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
def hex_1479938 : String := "43444240414308050808084240414307064306060640414307440842060743070807440A4243400A060643404144420908090A08400A09"
theorem cover_1479938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1479938)
  decide +kernel
#print axioms cover_1479938

def state_1479993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
def hex_1479993 : String := "4344084241400A0606080A"
theorem cover_1479993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1479993)
  decide +kernel
#print axioms cover_1479993

def state_1480008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 15)))
def hex_1480008 : String := "4440414344420640050605444206404305050606434442050505444206400506050606"
theorem cover_1480008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1480008)
  decide +kernel
#print axioms cover_1480008

def state_1480043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 15)))
def hex_1480043 : String := "444041430542444005430505050543050541434206074206444043054105050605430742064440050605400506"
theorem cover_1480043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1480043)
  decide +kernel
#print axioms cover_1480043

def state_1480089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 15)))
def hex_1480089 : String := "444043414442064007060644420640070606070606"
theorem cover_1480089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1480089)
  decide +kernel
#print axioms cover_1480089

def state_1480112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 30)))
def hex_1480112 : String := "434142444007434106050605444005430541050505424440054305070505410707"
theorem cover_1480112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1480112)
  decide +kernel
#print axioms cover_1480112

def state_1480145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 30)))
def hex_1480145 : String := "43414206444043410605410606060642064440430541420505050606414206444340060606064206444340410606060A06"
theorem cover_1480145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1480145)
  decide +kernel
#print axioms cover_1480145
end Mub6.Numerical.CircleFullD0.Forest
