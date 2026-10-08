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
def state_2565820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 95)))
def hex_2565820 : String := "40430505430842444140054308090505440905"
theorem cover_2565820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2565820)
  decide +kernel
#print axioms cover_2565820

def state_2565842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
def hex_2565842 : String := "40064342414406400643420741060706074106440640064342070606420706"
theorem cover_2565842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2565842)
  decide +kernel
#print axioms cover_2565842

def state_2565873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
def hex_2565873 : String := "404342410A0506064342E2414440064342080606400A430809444043420505064342E2410644060542E20640054342050542050542E2410644064005430505"
theorem cover_2565873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_2565873)
  decide +kernel
#print axioms cover_2565873

def state_2565936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
def hex_2565936 : String := "44400743420707074005434244070544414005434205050705054207440705"
theorem cover_2565936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2565936)
  decide +kernel
#print axioms cover_2565936

def state_2565967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
def hex_2565967 : String := "41440640064342410644060906064440064342410607060640054342444140054309060505094244060506"
theorem cover_2565967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2565967)
  decide +kernel
#print axioms cover_2565967

def state_2566011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_2566011 : String := "400743420741440740074307070707"
theorem cover_2566011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2566011)
  decide +kernel
#print axioms cover_2566011
end Mub6.Numerical.CircleFullD0.Forest
