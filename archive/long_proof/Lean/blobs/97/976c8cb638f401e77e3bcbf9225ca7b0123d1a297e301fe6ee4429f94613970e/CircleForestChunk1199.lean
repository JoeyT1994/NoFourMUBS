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
def state_1588172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 51)))
def hex_1588172 : String := "4440414342054406054244400A05054440090940414309094305050543054205444041094305050505414305420505054041430542054405050505"
theorem cover_1588172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588172 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1588172)
  decide +kernel
#print axioms cover_1588172

def state_1588232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 54 else 102)))
def hex_1588232 : String := "40414342440943090909424409400909094342440605440943070742444009094041070705440940070941430842440805084306424405054409410805"
theorem cover_1588232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_1588232)
  decide +kernel
#print axioms cover_1588232

def state_1588293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 54 else 103)))
def hex_1588293 : String := "404143424443050505440807424440414307070741080540070544400708400708434205074244050544070741430542050805"
theorem cover_1588293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1588293)
  decide +kernel
#print axioms cover_1588293

def state_1588345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 98 else (if j.val < 4 then 55 else 51)))
def hex_1588345 : String := "444043410A0A0A43414205440A05050A4043410A050A430505"
theorem cover_1588345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1588345)
  decide +kernel
#print axioms cover_1588345

def state_1588372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 80 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 102)))
def hex_1588372 : String := "43414244094009090942444009094041090741430909430505440940070941420A06420A440906"
theorem cover_1588372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1588372)
  decide +kernel
#print axioms cover_1588372
end Mub6.Numerical.CircleFullD0.Forest
