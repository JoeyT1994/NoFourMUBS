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
def state_1561021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 88)))
def hex_1561021 : String := "4140440942430641400944060709090606"
theorem cover_1561021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1561021)
  decide +kernel
#print axioms cover_1561021

def state_1561041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 176)))
def hex_1561041 : String := "424341404405054406420506050543094140440542050944420509420543060505"
theorem cover_1561041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1561041)
  decide +kernel
#print axioms cover_1561041

def state_1561075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 177)))
def hex_1561075 : String := "434140444205094205084442054306054243414005070505434107064108050541400544050505"
theorem cover_1561075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1561075)
  decide +kernel
#print axioms cover_1561075

def state_1561114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 177)))
def hex_1561114 : String := "43414009440942430641070907094140444205080844424341400544050805054309410805424308054308084005440505"
theorem cover_1561114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1561114)
  decide +kernel
#print axioms cover_1561114

def state_1561164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 176)))
def hex_1561164 : String := "42430641400506054306414044064206060606"
theorem cover_1561164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1561164)
  decide +kernel
#print axioms cover_1561164

def state_1561184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 177)))
def hex_1561184 : String := "43414044420606424306414005060543064107060606414044420543050542054341400507050544420506420943060905"
theorem cover_1561184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1561184)
  decide +kernel
#print axioms cover_1561184
end Mub6.Numerical.CircleFullD0.Forest
