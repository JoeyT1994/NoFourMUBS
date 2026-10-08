import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_67433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_67433 : String := "420A4344420A0842434041440643060A06060A434041080641440542060806400841084408420A080A"
theorem cover_67433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_67433)
  decide +kernel
#print axioms cover_67433

def state_67474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_67474 : String := "4243440A410643400506050A43444106420A06414243060A4306404406420A0844060A4243060A43064044060906440A410A0A"
theorem cover_67474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_67474)
  decide +kernel
#print axioms cover_67474

def state_67530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_67530 : String := "434440420741050542074143440540050A074305074009424441430907090609440740420643090642064344080606"
theorem cover_67530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_67530)
  decide +kernel
#print axioms cover_67530

def state_67578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_67578 : String := "44400541050540440509444142430540054442090509050509"
theorem cover_67578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_67578)
  decide +kernel
#print axioms cover_67578

def state_67604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_67604 : String := "40430541424405080505434142070505410805"
theorem cover_67604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_67604)
  decide +kernel
#print axioms cover_67604

def state_67623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_67623 : String := "4043444142400908050509444108080843444142404309084344080908400543054405090841420909094408410608"
theorem cover_67623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_67623)
  decide +kernel
#print axioms cover_67623

def state_67672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_67672 : String := "44400941420A0A4243440A090A0A09"
theorem cover_67672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_67672)
  decide +kernel
#print axioms cover_67672
end Mub6.Numerical.CircleFullPrototype.Forest
