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
def state_1613102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 201)))
def hex_1613102 : String := "404241430909094143444006080606094205410809"
theorem cover_1613102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1613102)
  decide +kernel
#print axioms cover_1613102

def state_1613123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 123 else 100)))
def hex_1613123 : String := "444042414344400609060609410606420941434440060840060806094042090609"
theorem cover_1613123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1613123)
  decide +kernel
#print axioms cover_1613123

def state_1613156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 83) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 100)))
def hex_1613156 : String := "09"
theorem cover_1613156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1613156)
  decide +kernel
#print axioms cover_1613156

def state_1613158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 100)))
def hex_1613158 : String := "434440424106434440060806060642410843080808400608444006424106434440060806060606"
theorem cover_1613158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1613158)
  decide +kernel
#print axioms cover_1613158

def state_1613197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 100)))
def hex_1613197 : String := "43444042414344404209060909090941064344400609060642094143080809404209060944400609400609"
theorem cover_1613197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1613197)
  decide +kernel
#print axioms cover_1613197

def state_1613240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
def hex_1613240 : String := "420941430844080809"
theorem cover_1613240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1613240)
  decide +kernel
#print axioms cover_1613240

def state_1613249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 101)))
def hex_1613249 : String := "4042414344404205410606050544400609060941434440060806064344404209060909064205410809"
theorem cover_1613249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1613249)
  decide +kernel
#print axioms cover_1613249

def state_1613290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 50)))
def hex_1613290 : String := "41084344404241084308440A08080808444042410643444006084006080606424108430844080808400608"
theorem cover_1613290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1613290)
  decide +kernel
#print axioms cover_1613290
end Mub6.Numerical.CircleFullD0.Forest
