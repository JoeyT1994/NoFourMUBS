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
def state_956894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 26)))
def hex_956894 : String := "440643404241074406074144074340420741050707054406434042074107440707070742060706"
theorem cover_956894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_956894)
  decide +kernel
#print axioms cover_956894

def state_956934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 52)))
def hex_956934 : String := "430906"
theorem cover_956934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_956934)
  decide +kernel
#print axioms cover_956934

def state_956937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 53)))
def hex_956937 : String := "43404142444308074340420A090940420508074408430940080942440843094041080807094142070909404142074407430805424406074407430806410706"
theorem cover_956937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_956937)
  decide +kernel
#print axioms cover_956937

def state_957000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
def hex_957000 : String := "424406434041420644064340414206080606060606064443090643404142440843094008060909094041420644064308060606"
theorem cover_957000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_957000)
  decide +kernel
#print axioms cover_957000

def state_957051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 26)))
def hex_957051 : String := "41420644060706"
theorem cover_957051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_957051)
  decide +kernel
#print axioms cover_957051

def state_957058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 26)))
def hex_957058 : String := "06"
theorem cover_957058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_957058)
  decide +kernel
#print axioms cover_957058

def state_957063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 27)))
def hex_957063 : String := "43444042410543444042050507050541430A05434440424105440705410A44430A050A0A0A44050542410507410A430A070A440505"
theorem cover_957063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_957063)
  decide +kernel
#print axioms cover_957063
end Mub6.Numerical.CircleFullD0.Forest
