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
def state_1012093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 46)))
def hex_1012093 : String := "444341064240440943060906064142050642404409430505094044430606060643064106420506"
theorem cover_1012093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1012093)
  decide +kernel
#print axioms cover_1012093

def state_1012132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 46)))
def hex_1012132 : String := "40444306410642400706060706"
theorem cover_1012132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1012132)
  decide +kernel
#print axioms cover_1012132

def state_1012146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 46)))
def hex_1012146 : String := "4044434142400A09400A440909090A43414244400A4309090A444007430707070A0A444309094341424044094309050906094142400A0940440A0A0609"
theorem cover_1012146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1012146)
  decide +kernel
#print axioms cover_1012146

def state_1012207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 46)))
def hex_1012207 : String := "4044430841420A050A4341070841070A4443410608410609430641064240090606"
theorem cover_1012207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1012207)
  decide +kernel
#print axioms cover_1012207

def state_1012240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 46)))
def hex_1012240 : String := "4142400A444341084208400A06080840444341070A0A4307074443064106420A064306410606420A400A44434142400A0606090A434142400A06060A0A"
theorem cover_1012240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1012240)
  decide +kernel
#print axioms cover_1012240

def state_1012303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 47)))
def hex_1012303 : String := "424440074306080706"
theorem cover_1012303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1012303)
  decide +kernel
#print axioms cover_1012303
end Mub6.Numerical.CircleFullD0.Forest
