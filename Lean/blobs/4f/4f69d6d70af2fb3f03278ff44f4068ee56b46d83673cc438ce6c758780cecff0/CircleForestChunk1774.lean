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
def state_2298920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 45)))
def hex_2298920 : String := "4143424405410743074009050542440A0A0A4342440909094244094008414309080844090A"
theorem cover_2298920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2298920)
  decide +kernel
#print axioms cover_2298920

def state_2298957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 45)))
def hex_2298957 : String := "4143054244050705434244054043050905054244400905404143074244090707094107430609440507"
theorem cover_2298957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2298957)
  decide +kernel
#print axioms cover_2298957

def state_2299001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
def hex_2299001 : String := "4142434441060741064006090643440641060A064207430907"
theorem cover_2299001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2299001)
  decide +kernel
#print axioms cover_2299001

def state_2299028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 44)))
def hex_2299028 : String := "43444041050905404142430506054243070743090941054243054405400705054440064105430505400641064342074405400605420606"
theorem cover_2299028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2299028)
  decide +kernel
#print axioms cover_2299028

def state_2299083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 44)))
def hex_2299083 : String := "43440540410542430506050544400605400641054243050606"
theorem cover_2299083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2299083)
  decide +kernel
#print axioms cover_2299083

def state_2299108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
def hex_2299108 : String := "4243440740070907434409400941420905094440074142070507404142070607414243090743090609"
theorem cover_2299108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2299108)
  decide +kernel
#print axioms cover_2299108
end Mub6.Numerical.CircleFullD0.Forest
