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
def state_1648228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 20)))
def hex_1648228 : String := "424409414007070944094140430A0609400609"
theorem cover_1648228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648228 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1648228)
  decide +kernel
#print axioms cover_1648228

def state_1648250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
def hex_1648250 : String := "434442410605414340440A0906400A44420641060A0643050A4205414305440A050544424107074140084344070A070A420A410A0A"
theorem cover_1648250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1648250)
  decide +kernel
#print axioms cover_1648250

def state_1648303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
def hex_1648303 : String := "43444205410605054442074107074205414044430507060605"
theorem cover_1648303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1648303)
  decide +kernel
#print axioms cover_1648303

def state_1648328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
def hex_1648328 : String := "40434405050A430544420541070505"
theorem cover_1648328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1648328)
  decide +kernel
#print axioms cover_1648328

def state_1648346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 21)))
def hex_1648346 : String := "4442414340094442410643050A41090909400A4442410A0A0A420A0A4340094405050A414309400944420A0A09434009440A090A42410943050A09"
theorem cover_1648346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1648346)
  decide +kernel
#print axioms cover_1648346

def state_1648405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 21)))
def hex_1648405 : String := "444241400A43440A0A080A41400A430A0A0A42410A0A0A"
theorem cover_1648405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1648405)
  decide +kernel
#print axioms cover_1648405

def state_1648432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 42)))
def hex_1648432 : String := "4043444205410605054442410640430507054140434442060A060A430607400A4305074206414043060A06400A054305440605"
theorem cover_1648432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1648432)
  decide +kernel
#print axioms cover_1648432
end Mub6.Numerical.CircleFullD0.Forest
