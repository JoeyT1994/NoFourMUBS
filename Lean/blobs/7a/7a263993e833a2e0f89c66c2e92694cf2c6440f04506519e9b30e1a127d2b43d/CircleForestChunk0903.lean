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
def state_1517263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 31)))
def hex_1517263 : String := "44414042434441060706060742060740424344414007070841064042060706440A064307074243060607414042064305060640420643440705444106070606"
theorem cover_1517263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1517263)
  decide +kernel
#print axioms cover_1517263

def state_1517326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 31)))
def hex_1517326 : String := "44414042064307060640420A430705420507410640420643060606"
theorem cover_1517326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517326 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_1517326)
  decide +kernel
#print axioms cover_1517326

def state_1517355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 15)))
def hex_1517355 : String := "444140430A0A0A0A41404342440A07444140434207050A0A0A41400543050640050A4207440A414007060A434206440A060A40430A0A0A"
theorem cover_1517355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1517355)
  decide +kernel
#print axioms cover_1517355

def state_1517410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 15)))
def hex_1517410 : String := "440A41404207430A080A0A"
theorem cover_1517410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1517410)
  decide +kernel
#print axioms cover_1517410

def state_1517423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1517423 : String := "4140424344084140090808440A4140090A0A4308440641400608084243080A0840420A0808"
theorem cover_1517423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1517423)
  decide +kernel
#print axioms cover_1517423

def state_1517463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 46) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 31)))
def hex_1517463 : String := "4344414005084005080544414042430909430909420A43080A40090A41404243050705424305440A0543054441050505404243050705420A43050A"
theorem cover_1517463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1517463)
  decide +kernel
#print axioms cover_1517463
end Mub6.Numerical.CircleFullD0.Forest
