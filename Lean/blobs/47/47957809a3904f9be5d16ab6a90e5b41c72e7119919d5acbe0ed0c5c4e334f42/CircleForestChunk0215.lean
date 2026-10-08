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
def state_989076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 86)))
def hex_989076 : String := "40434408410708444142400843084405C60505C64344410A0541060844414240430A440A0A0A0A4240080A05C6"
theorem cover_989076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_989076)
  decide +kernel
#print axioms cover_989076

def state_989121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 86)))
def hex_989121 : String := "424043084406C64344084142400843080908084407C6400843084405C6"
theorem cover_989121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_989121)
  decide +kernel
#print axioms cover_989121

def state_989153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 87)))
def hex_989153 : String := "43444107424043070743444107080744414205074240064305050807400743070707C6"
theorem cover_989153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_989153)
  decide +kernel
#print axioms cover_989153

def state_989188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 87)))
def hex_989188 : String := "4344414240430505050642404344410A084105420507444105420540080A05430A4441050A05404344080744410A08070A41074205400706C6"
theorem cover_989188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_989188)
  decide +kernel
#print axioms cover_989188

def state_989245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 87)))
def hex_989245 : String := "404307C6434441064240430607060606C6"
theorem cover_989245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_989245)
  decide +kernel
#print axioms cover_989245

def state_989264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 87)))
def hex_989264 : String := "4344414240084308440808080841424043070743440807444107080740070808C6"
theorem cover_989264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989264 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_989264)
  decide +kernel
#print axioms cover_989264
end Mub6.Numerical.CircleFullD0.Forest
