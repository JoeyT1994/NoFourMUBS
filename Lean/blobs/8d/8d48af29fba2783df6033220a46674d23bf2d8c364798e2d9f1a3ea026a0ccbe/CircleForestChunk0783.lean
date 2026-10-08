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
def state_1488713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 28)))
def hex_1488713 : String := "44424043410805054341440508050540434144070744070741070943410707410707420840430A084344410742400706070A4441060706"
theorem cover_1488713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1488713)
  decide +kernel
#print axioms cover_1488713

def state_1488768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
def hex_1488768 : String := "400A43410A44424008060A0A41064442060A06"
theorem cover_1488768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1488768)
  decide +kernel
#print axioms cover_1488768

def state_1488787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 14)))
def hex_1488787 : String := "41444008060644400841444206434007060606444205434008410705050808"
theorem cover_1488787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1488787)
  decide +kernel
#print axioms cover_1488787

def state_1488818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 14)))
def hex_1488818 : String := "43410A44400A4243410A44070A410A44070A0A0A4144400A42440706070A4440424108090742414407074407430707070A"
theorem cover_1488818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1488818)
  decide +kernel
#print axioms cover_1488818

def state_1488870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
def hex_1488870 : String := "4440434441064206400A0606060606"
theorem cover_1488870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1488870)
  decide +kernel
#print axioms cover_1488870

def state_1488888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 28)))
def hex_1488888 : String := "41444209404307074307074206400A06444240434109440509414405060509404341070741070743070742094043444107070A444107070A430906"
theorem cover_1488888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1488888)
  decide +kernel
#print axioms cover_1488888
end Mub6.Numerical.CircleFullD0.Forest
