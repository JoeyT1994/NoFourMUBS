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
def state_157476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 60)))
def hex_157476 : String := "40824142434406074406404142054305050A0643094409404142430908094243090A09094243070A4307440940414243070A0942070907"
theorem cover_157476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_157476)
  decide +kernel
#print axioms cover_157476

def state_157534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 114) else (if j.val < 3 then 114 else (if j.val < 4 then 41 else 61)))
def hex_157534 : String := "434440414205430505424305050641050705444041084209430606410542054344080508400605"
theorem cover_157534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_157534)
  decide +kernel
#print axioms cover_157534

def state_157573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 114) else (if j.val < 3 then 115 else (if j.val < 4 then 41 else 61)))
def hex_157573 : String := "434440064142430505094243074440060706060644404108064108424308080806"
theorem cover_157573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_157573)
  decide +kernel
#print axioms cover_157573

def state_157606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 115) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 61)))
def hex_157606 : String := "424344400607064440420906420A4143070A0A0643064440064142430608060606"
theorem cover_157606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_157606)
  decide +kernel
#print axioms cover_157606

def state_157639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 61)))
def hex_157639 : String := "414243050543440940410507054440410842080808084243070A43074440414243070843070807074041080607"
theorem cover_157639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_157639)
  decide +kernel
#print axioms cover_157639

def state_157684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
def hex_157684 : String := "41420543094406054243070A43074440410607064041420543054409050707"
theorem cover_157684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_157684)
  decide +kernel
#print axioms cover_157684
end Mub6.Numerical.CircleFullPrototype.Forest
