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
def state_2329002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 24)))
def hex_2329002 : String := "42430705434441424007434441424005CF0807410505440805080841420540054344414205080505050544414205080505"
theorem cover_2329002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329002 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_2329002)
  decide +kernel
#print axioms cover_2329002

def state_2329052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 24)))
def hex_2329052 : String := "434441404206434441404205CF0606064441050505060641400506054441400542054443414005060505050505"
theorem cover_2329052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_2329052)
  decide +kernel
#print axioms cover_2329052

def state_2329103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 38 else (if j.val < 4 then 96 else 48)))
def hex_2329103 : String := "4441CF40080641404205434441424005064008074205084105054441050505420643064441070606400506"
theorem cover_2329103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2329103)
  decide +kernel
#print axioms cover_2329103

def state_2329146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 38 else (if j.val < 4 then 97 else 48)))
def hex_2329146 : String := "4441404205084244434140420508420607400506410505434105050544084341070808400542050841400542054344410705050505"
theorem cover_2329146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2329146)
  decide +kernel
#print axioms cover_2329146

def state_2329199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 48 else 48)))
def hex_2329199 : String := "434441400807084140424344084107080807070844084140080708"
theorem cover_2329199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2329199)
  decide +kernel
#print axioms cover_2329199

def state_2329226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 48)))
def hex_2329226 : String := "4243444142060706064441424044430641070606060706414206070607"
theorem cover_2329226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_2329226)
  decide +kernel
#print axioms cover_2329226
end Mub6.Numerical.CircleFullD0.Forest
