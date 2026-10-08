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
def state_958988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 54)))
def hex_958988 : String := "404143420544080505434244060544084041430805430808414309054309064205440605414342064406404105430905060606"
theorem cover_958988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_958988)
  decide +kernel
#print axioms cover_958988

def state_959039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 55)))
def hex_959039 : String := "404105434442050505054105434442054041054344060505060505"
theorem cover_959039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959039 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_959039)
  decide +kernel
#print axioms cover_959039

def state_959068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 54)))
def hex_959068 : String := "4143424408404143080543080841430905090942440805440840084108084342440840410908090942440840084108064408400809"
theorem cover_959068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_959068)
  decide +kernel
#print axioms cover_959068

def state_959121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 54)))
def hex_959121 : String := "4143094244064005060909"
theorem cover_959121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_959121)
  decide +kernel
#print axioms cover_959121

def state_959133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 55)))
def hex_959133 : String := "4143424405054440060A05054342444041430705430742050541430905430942050905444007090742054440414307050741430905430942050905"
theorem cover_959133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_959133)
  decide +kernel
#print axioms cover_959133

def state_959192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 55)))
def hex_959192 : String := "41430A42050A4342444009090A0942444005060544090A"
theorem cover_959192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_959192)
  decide +kernel
#print axioms cover_959192
end Mub6.Numerical.CircleFullD0.Forest
