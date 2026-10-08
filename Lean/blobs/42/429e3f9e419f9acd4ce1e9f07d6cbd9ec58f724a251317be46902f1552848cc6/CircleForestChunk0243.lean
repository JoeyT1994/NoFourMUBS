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
def state_133677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 12)))
def hex_133677 : String := "4440410A08414208440843070A084041424307080709414243444007050744084007050742084344404107084107080744084009410708"
theorem cover_133677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_133677)
  decide +kernel
#print axioms cover_133677

def state_133732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_133732 : String := "43074009410709"
theorem cover_133732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_133732)
  decide +kernel
#print axioms cover_133732

def state_133739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
def hex_133739 : String := "444408400A4142080A0840410642060641424344400605060643070642434408060643444009414243070607090606"
theorem cover_133739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_133739)
  decide +kernel
#print axioms cover_133739

def state_133786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_133786 : String := "43444243070A0A07440A42400A410743440A070A0A"
theorem cover_133786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_133786)
  decide +kernel
#print axioms cover_133786

def state_133808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_133808 : String := "43444143440809440809090944084140094208430944080609"
theorem cover_133808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133808 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_133808)
  decide +kernel
#print axioms cover_133808

def state_133833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_133833 : String := "43444142430544054005414243050A05050505414209050544410A05414240094344410A09090A0A420905"
theorem cover_133833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_133833)
  decide +kernel
#print axioms cover_133833

def state_133880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 12)))
def hex_133880 : String := "404344064107420606444142050608414205400707424008084043440607440841070843064406410708430644064105420506"
theorem cover_133880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_133880)
  decide +kernel
#print axioms cover_133880
end Mub6.Numerical.CircleFullPrototype.Forest
