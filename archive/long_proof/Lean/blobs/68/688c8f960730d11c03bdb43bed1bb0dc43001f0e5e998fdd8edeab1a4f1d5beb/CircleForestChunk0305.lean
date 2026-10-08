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
def state_1010711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 45)))
def hex_1010711 : String := "4142400A44434142400A4443080A43080A08080A4341424007440A0707420A080A4044050744430505430741070542400A4443080A0A05"
theorem cover_1010711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1010711)
  decide +kernel
#print axioms cover_1010711

def state_1010766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 45)))
def hex_1010766 : String := "41420A400A440A0A0A"
theorem cover_1010766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1010766)
  decide +kernel
#print axioms cover_1010766

def state_1010775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 22)))
def hex_1010775 : String := "400544054305410505"
theorem cover_1010775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1010775)
  decide +kernel
#print axioms cover_1010775

def state_1010784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
def hex_1010784 : String := "4240064443050543080A05"
theorem cover_1010784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1010784)
  decide +kernel
#print axioms cover_1010784

def state_1010795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
def hex_1010795 : String := "41420A400A44414243050A050541420A43050A0A0A"
theorem cover_1010795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1010795)
  decide +kernel
#print axioms cover_1010795

def state_1010816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
def hex_1010816 : String := "43414244400A43414244400743070A0707420A44400543050A0A0A40074341070A0A444007430741070507420A440540054305050A"
theorem cover_1010816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_1010816)
  decide +kernel
#print axioms cover_1010816

def state_1010876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 44)))
def hex_1010876 : String := "414240444309414207050543414240090908084142404409090940440543050A44090909440943090940440543050544054306410605420905"
theorem cover_1010876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1010876)
  decide +kernel
#print axioms cover_1010876

def state_1010935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
def hex_1010935 : String := "4044434142074005070707434142400A09400A440909090A440743414207090707"
theorem cover_1010935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1010935)
  decide +kernel
#print axioms cover_1010935
end Mub6.Numerical.CircleFullD0.Forest
