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
def state_170333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 60)))
def hex_170333 : String := "434240418F440709414443090A090940418F0505424007410A074041440A4342404106070A40410805050A44074342070507410A4407430507"
theorem cover_170333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170333 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_170333)
  decide +kernel
#print axioms cover_170333

def state_170391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 96 else 61)))
def hex_170391 : String := "4240414443420940410605054240410609064041064443090606060644090941060940414443054240080505060505"
theorem cover_170391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_170391)
  decide +kernel
#print axioms cover_170391

def state_170438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 97 else 61)))
def hex_170438 : String := "42404106440743420606064106094041064443424008410605054207080841064443050606"
theorem cover_170438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_170438)
  decide +kernel
#print axioms cover_170438

def state_170475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 30)))
def hex_170475 : String := "404144090944434240080505424008414408080808084144434241070505420A0906444305424041440A43050805050543054240080505"
theorem cover_170475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170475 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_170475)
  decide +kernel
#print axioms cover_170475
end Mub6.Numerical.CircleFullPrototype.Forest
