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
def state_1344195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 20 else 48)))
def hex_1344195 : String := "4143404442060608064005440642064105064306400806"
theorem cover_1344195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344195 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1344195)
  decide +kernel
#print axioms cover_1344195

def state_1344218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 20 else 48)))
def hex_1344218 : String := "414340444241050605424105430705054442060942414340090640050606410909400544054241050505430A4005440642060A"
theorem cover_1344218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1344218)
  decide +kernel
#print axioms cover_1344218

def state_1344270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 20 else 49)))
def hex_1344270 : String := "414340084442084143084008440608060840054442084105430805420841050808"
theorem cover_1344270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344270 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1344270)
  decide +kernel
#print axioms cover_1344270

def state_1344306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 62 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 40 else 49)))
def hex_1344306 : String := "444241050805420805"
theorem cover_1344306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1344306)
  decide +kernel
#print axioms cover_1344306

def state_1344315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 63 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 40 else 49)))
def hex_1344315 : String := "4442414340444208070844094208094005440942410508054307400844060841430705074241434007444208070740054442080505084143070507"
theorem cover_1344315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1344315)
  decide +kernel
#print axioms cover_1344315

def state_1344374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 41 else 49)))
def hex_1344374 : String := "400544424105050505"
theorem cover_1344374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1344374)
  decide +kernel
#print axioms cover_1344374

def state_1344383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 20 else 49)))
def hex_1344383 : String := "4340070740440505444241430805060A4208410507"
theorem cover_1344383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1344383)
  decide +kernel
#print axioms cover_1344383

def state_1344404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 24)))
def hex_1344404 : String := "4005444241054340054406420606050542410543080505"
theorem cover_1344404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1344404)
  decide +kernel
#print axioms cover_1344404
end Mub6.Numerical.CircleFullD0.Forest
