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
def state_1634747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 10)))
def hex_1634747 : String := "424344070A0743444143400A420744070A40070743400A42070A0A4143440A0A0A0A44070A"
theorem cover_1634747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1634747)
  decide +kernel
#print axioms cover_1634747

def state_1634784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 10)))
def hex_1634784 : String := "424344070507434441404342064407060707404342054407050707414043064407060605440707"
theorem cover_1634784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1634784)
  decide +kernel
#print axioms cover_1634784

def state_1634823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 11)))
def hex_1634823 : String := "414440424306084341440606444306080608420643064144080644084008064042064306080644400A420543050A400A05"
theorem cover_1634823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1634823)
  decide +kernel
#print axioms cover_1634823

def state_1634872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1634872 : String := "4243050A434443054041420544430541400A0505054205050505444041420A43440A0A0A0A41424305074344404143050705050544070742054305070A"
theorem cover_1634872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1634872)
  decide +kernel
#print axioms cover_1634872

def state_1634933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1634933 : String := "41420643064440414206430607420743440705070606420543054440414205430507050505"
theorem cover_1634933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1634933)
  decide +kernel
#print axioms cover_1634933

def state_1634971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_1634971 : String := "40410742074344070706410707"
theorem cover_1634971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1634971 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1634971)
  decide +kernel
#print axioms cover_1634971
end Mub6.Numerical.CircleFullD0.Forest
