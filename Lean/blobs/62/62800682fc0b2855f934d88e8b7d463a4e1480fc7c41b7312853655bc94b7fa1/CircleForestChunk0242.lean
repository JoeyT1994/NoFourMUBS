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
def state_133447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_133447 : String := "444042440A4143060A0A0A42440941054340060509440A414306060A4042410743440607440A070742410543050541430644060506"
theorem cover_133447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_133447)
  decide +kernel
#print axioms cover_133447

def state_133504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_133504 : String := "4143444208434408400941050808424309084309400941440505094408420640064106084344080908"
theorem cover_133504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_133504)
  decide +kernel
#print axioms cover_133504

def state_133545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_133545 : String := "414344420540430A0805420540430A4105440505054408420540410543050505434408420840090A08"
theorem cover_133545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133545 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_133545)
  decide +kernel
#print axioms cover_133545

def state_133586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_133586 : String := "4041430942440609090941430A4205444006050A43094244060609"
theorem cover_133586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_133586)
  decide +kernel
#print axioms cover_133586

def state_133613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_133613 : String := "4408404142084344060908084142054305054243060806"
theorem cover_133613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_133613)
  decide +kernel
#print axioms cover_133613

def state_133644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 12)))
def hex_133644 : String := "444041424307080742084307084142060642060640410709410742430744080907"
theorem cover_133644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_133644)
  decide +kernel
#print axioms cover_133644
end Mub6.Numerical.CircleFullPrototype.Forest
