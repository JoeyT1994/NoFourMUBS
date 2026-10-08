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
def state_163755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 13)))
def hex_163755 : String := "434044094143090943424043414405420605054109440506090942400609090909"
theorem cover_163755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_163755)
  decide +kernel
#print axioms cover_163755

def state_163788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
def hex_163788 : String := "42434044074207434140434207050707070707074340444305410905434142400543054405070505414207094207054409434109050707"
theorem cover_163788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163788 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_163788)
  decide +kernel
#print axioms cover_163788

def state_163843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_163843 : String := "4441094243090709414243404409410907090709420709"
theorem cover_163843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_163843)
  decide +kernel
#print axioms cover_163843

def state_163870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 7)))
def hex_163870 : String := "444041420543444041050608050542434440420506070505434440434441060606064344410807084407060606414205084207434440430807070807400505"
theorem cover_163870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_163870)
  decide +kernel
#print axioms cover_163870

def state_163933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 7)))
def hex_163933 : String := "4440050505"
theorem cover_163933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_163933)
  decide +kernel
#print axioms cover_163933

def state_163938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 7)))
def hex_163938 : String := "434440414308064344424006084006080606410843080808444006410844070605"
theorem cover_163938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_163938)
  decide +kernel
#print axioms cover_163938

def state_163972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 7)))
def hex_163972 : String := "43444042434407060643444140060740060706064207434407070740064207430806440705"
theorem cover_163972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_163972)
  decide +kernel
#print axioms cover_163972
end Mub6.Numerical.CircleFullPrototype.Forest
