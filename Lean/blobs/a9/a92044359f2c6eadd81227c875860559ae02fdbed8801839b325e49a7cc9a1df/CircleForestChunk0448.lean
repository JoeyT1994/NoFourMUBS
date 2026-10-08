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
def state_1045123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
def hex_1045123 : String := "404442414340440806060843404407420806074044070807410643054044424143050605050606424106430608064442080606"
theorem cover_1045123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1045123)
  decide +kernel
#print axioms cover_1045123

def state_1045177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 44)))
def hex_1045177 : String := "08"
theorem cover_1045177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045177 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1045177)
  decide +kernel
#print axioms cover_1045177

def state_1045179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
def hex_1045179 : String := "434044420806060608"
theorem cover_1045179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1045179)
  decide +kernel
#print axioms cover_1045179

def state_1045189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
def hex_1045189 : String := "40444241080741430640444208060606430540444207054241080706440706420841064306064442070606"
theorem cover_1045189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1045189)
  decide +kernel
#print axioms cover_1045189

def state_1045232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
def hex_1045232 : String := "404442084143404442080908080843404442074143404407420706078207420841430608434044050606824407088242084108434044420841060908060808"
theorem cover_1045232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 63) (hex := hex_1045232)
  decide +kernel
#print axioms cover_1045232

def state_1045295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 45)))
def hex_1045295 : String := "42084108434044420806060608"
theorem cover_1045295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045295 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1045295)
  decide +kernel
#print axioms cover_1045295

def state_1045308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
def hex_1045308 : String := "08"
theorem cover_1045308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1045308)
  decide +kernel
#print axioms cover_1045308

def state_1045309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
def hex_1045309 : String := "43404442070542414309090941430540440906060544074207064044420741434044420705420909074044070907074209414340440909090909440709"
theorem cover_1045309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1045309)
  decide +kernel
#print axioms cover_1045309
end Mub6.Numerical.CircleFullD0.Forest
