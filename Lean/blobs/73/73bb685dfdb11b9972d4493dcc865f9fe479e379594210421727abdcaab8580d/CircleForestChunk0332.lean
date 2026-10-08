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
def state_1017063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 124 else 88)))
def hex_1017063 : String := "4044424109050942410743054007444241060505060644424106050606"
theorem cover_1017063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_1017063)
  decide +kernel
#print axioms cover_1017063

def state_1017094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 176)))
def hex_1017094 : String := "4241094340440942410943050A074409424109430540440509440508094044094241090A074409424108434044090808400A080909"
theorem cover_1017094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1017094)
  decide +kernel
#print axioms cover_1017094

def state_1017147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 177)))
def hex_1017147 : String := "4241074340074442410843400A06084106430507074007444208070707"
theorem cover_1017147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_1017147)
  decide +kernel
#print axioms cover_1017147

def state_1017176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
def hex_1017176 : String := "444241094340440942080944420705064044094208094408080942410843404442080606060806"
theorem cover_1017176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1017176)
  decide +kernel
#print axioms cover_1017176

def state_1017216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 124 else 88)))
def hex_1017216 : String := "05"
theorem cover_1017216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1017216)
  decide +kernel
#print axioms cover_1017216

def state_1017218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 88)))
def hex_1017218 : String := "444241430540444206050A4442414305060505420A414305400A44050A050505424143400A44050A400A0A0A41430540074442410705050705"
theorem cover_1017218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1017218)
  decide +kernel
#print axioms cover_1017218

def state_1017276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 125 else 176)))
def hex_1017276 : String := "4241430540444207054241434044050807080541430540440542080544050805440742074108050505"
theorem cover_1017276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1017276)
  decide +kernel
#print axioms cover_1017276
end Mub6.Numerical.CircleFullD0.Forest
