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
def state_1647985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 41)))
def hex_1647985 : String := "424441400A43A007400A0941400A43A00A0A4441400643A0060641400A430A0A0A"
theorem cover_1647985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 33) (hex := hex_1647985)
  decide +kernel
#print axioms cover_1647985

def state_1648018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
def hex_1648018 : String := "43A04244094140430507050544410909414043A044070A4305074043050A05"
theorem cover_1648018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1648018)
  decide +kernel
#print axioms cover_1648018

def state_1648049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 20)))
def hex_1648049 : String := "4244074107400707440941404342440707440541080A074342074407070740434244070A0606434207440741070707"
theorem cover_1648049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1648049)
  decide +kernel
#print axioms cover_1648049

def state_1648097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
def hex_1648097 : String := "4342444143400A4244090A44060A4006420906434006420506064143400A42050A0A0A440641430A06064244060A06"
theorem cover_1648097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648097 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1648097)
  decide +kernel
#print axioms cover_1648097

def state_1648146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 20)))
def hex_1648146 : String := "444140434209440905090940430509054140430542054409050505"
theorem cover_1648146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1648146)
  decide +kernel
#print axioms cover_1648146

def state_1648173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 20)))
def hex_1648173 : String := "44414043444209064241430509050606094043440505060941404342054441430506050542440A0A440606430542054409054043050A05"
theorem cover_1648173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1648173)
  decide +kernel
#print axioms cover_1648173
end Mub6.Numerical.CircleFullD0.Forest
