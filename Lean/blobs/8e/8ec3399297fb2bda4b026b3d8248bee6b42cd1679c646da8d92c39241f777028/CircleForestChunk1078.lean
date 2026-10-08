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
def state_1559097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 88)))
def hex_1559097 : String := "4341404442060606448942410643080608404442430A0509420808448942434140080A0A410605430A4108400844420808084106400644894206430806"
theorem cover_1559097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559097 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1559097)
  decide +kernel
#print axioms cover_1559097

def state_1559158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 88)))
def hex_1559158 : String := "434140084442894105094207074009440942430941080909414006444208080640440808444289430908420808"
theorem cover_1559158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1559158)
  decide +kernel
#print axioms cover_1559158

def state_1559203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 89)))
def hex_1559203 : String := "424341084008444243080843070808064341084008444208070708"
theorem cover_1559203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1559203)
  decide +kernel
#print axioms cover_1559203

def state_1559231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
def hex_1559231 : String := "44424305050942430A05430808"
theorem cover_1559231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_1559231)
  decide +kernel
#print axioms cover_1559231

def state_1559245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 88)))
def hex_1559245 : String := "42434140440542050944420509420543090505054309414044094205084442050942434140054405080505430941080505"
theorem cover_1559245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1559245)
  decide +kernel
#print axioms cover_1559245

def state_1559294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 89)))
def hex_1559294 : String := "42434140440A0844424305050A420A0A05414005440505054341400944090A0941400844424308050808400544054205430505"
theorem cover_1559294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1559294)
  decide +kernel
#print axioms cover_1559294
end Mub6.Numerical.CircleFullD0.Forest
