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
def state_1340168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 34 else 46)))
def hex_1340168 : String := "41444240084305410A084007094208074442080707"
theorem cover_1340168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1340168)
  decide +kernel
#print axioms cover_1340168

def state_1340192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 98) else (if j.val < 3 then 88 else (if j.val < 4 then 35 else 92)))
def hex_1340192 : String := "404341444208400543080508084144050808434144420A090A44420609084144420A090A444206094208400809"
theorem cover_1340192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1340192)
  decide +kernel
#print axioms cover_1340192

def state_1340237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 98) else (if j.val < 3 then 89 else (if j.val < 4 then 35 else 92)))
def hex_1340237 : String := "40434144424005090542400507050705430909"
theorem cover_1340237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1340237)
  decide +kernel
#print axioms cover_1340237

def state_1340256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 98) else (if j.val < 3 then 44 else (if j.val < 4 then 35 else 93)))
def hex_1340256 : String := "4240084308410A08404307054341440906074144420A060644424007090707"
theorem cover_1340256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1340256)
  decide +kernel
#print axioms cover_1340256

def state_1340287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 99) else (if j.val < 3 then 44 else (if j.val < 4 then 35 else 46)))
def hex_1340287 : String := "4442400843084144060806404307054307410909420807"
theorem cover_1340287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1340287)
  decide +kernel
#print axioms cover_1340287

def state_1340310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 46)))
def hex_1340310 : String := "4007430741444240050907424006070607"
theorem cover_1340310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1340310)
  decide +kernel
#print axioms cover_1340310

def state_1340327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 47)))
def hex_1340327 : String := "42400843074441420806080807"
theorem cover_1340327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1340327)
  decide +kernel
#print axioms cover_1340327

def state_1340340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 11)))
def hex_1340340 : String := "44404341060705434142440940060906424409070741424408400508094244094005090940064307410607"
theorem cover_1340340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1340340)
  decide +kernel
#print axioms cover_1340340
end Mub6.Numerical.CircleFullD0.Forest
