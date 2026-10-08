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
def state_2577239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 16)))
def hex_2577239 : String := "4042094341090505424341080808434144424306060642084306064442434009410608400508434005060542430908434009410644080805410805"
theorem cover_2577239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2577239)
  decide +kernel
#print axioms cover_2577239

def state_2577298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 17)))
def hex_2577298 : String := "4042090942084341084442084309080808"
theorem cover_2577298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2577298)
  decide +kernel
#print axioms cover_2577298

def state_2577317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
def hex_2577317 : String := "444243400706404106070607424340410A44074342090909410A4443070A43420A40070A0A40410909410644060A4340410707410644064243070606400506"
theorem cover_2577317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2577317)
  decide +kernel
#print axioms cover_2577317

def state_2577381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 16)))
def hex_2577381 : String := "424340074107074041440742090544054243070505414406424307060644074243400707404105054106440642430706064307074307400507"
theorem cover_2577381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_2577381)
  decide +kernel
#print axioms cover_2577381

def state_2577441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
def hex_2577441 : String := "414443074209074342094007070944430742090743420640060742094005410909"
theorem cover_2577441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577441 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2577441)
  decide +kernel
#print axioms cover_2577441

def state_2577476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 34)))
def hex_2577476 : String := "434240070507424041070741070707"
theorem cover_2577476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2577476)
  decide +kernel
#print axioms cover_2577476
end Mub6.Numerical.CircleFullD0.Forest
