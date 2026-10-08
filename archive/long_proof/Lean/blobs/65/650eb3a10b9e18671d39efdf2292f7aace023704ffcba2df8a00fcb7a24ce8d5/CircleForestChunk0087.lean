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
def state_20873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 60) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
def hex_20873 : String := "4243440A050543444140420AA30A0A41050A4441050705"
theorem cover_20873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_20873)
  decide +kernel
#print axioms cover_20873

def state_20896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 61) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
def hex_20896 : String := "4042434407410A0707434407414009440A09080842430A07434408410A0808"
theorem cover_20896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_20896)
  decide +kernel
#print axioms cover_20896

def state_20927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 31) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
def hex_20927 : String := "404243440709074344050508424344070A0743440641404306090A0908"
theorem cover_20927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_20927)
  decide +kernel
#print axioms cover_20927

def state_20957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 15) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 20)))
def hex_20957 : String := "410A08"
theorem cover_20957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_20957)
  decide +kernel
#print axioms cover_20957

def state_20961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
def hex_20961 : String := "4042430A44074105084344060A444140440742074306074406420506074140420543440A050505404208430A084208430608420A4306440641050A"
theorem cover_20961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_20961)
  decide +kernel
#print axioms cover_20961

def state_21020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
def hex_21020 : String := "4042430A07430608420806"
theorem cover_21020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_21020)
  decide +kernel
#print axioms cover_21020

def state_21033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 21)))
def hex_21033 : String := "4144404206430A064205430A054006054440090A09"
theorem cover_21033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_21033)
  decide +kernel
#print axioms cover_21033

def state_21057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 42)))
def hex_21057 : String := "424341440A060906434144400943084209090909410609"
theorem cover_21057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_21057)
  decide +kernel
#print axioms cover_21057
end Mub6.Numerical.CircleFullPrototype.Forest
