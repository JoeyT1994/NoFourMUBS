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
def state_151931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 55)))
def hex_151931 : String := "414243444041424308070807410907084407404106064108074308440908424344070A07434440410807070807"
theorem cover_151931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_151931)
  decide +kernel
#print axioms cover_151931

def state_151976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 55)))
def hex_151976 : String := "4142430A440740070708420743444108070807"
theorem cover_151976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_151976)
  decide +kernel
#print axioms cover_151976

def state_151995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 27 else 27)))
def hex_151995 : String := "4344424041084306440505090808440908"
theorem cover_151995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_151995)
  decide +kernel
#print axioms cover_151995

def state_152012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 47) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
def hex_152012 : String := "424344414042074306070A070A074344414240050605054108054441420705054142404305054308070505"
theorem cover_152012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_152012)
  decide +kernel
#print axioms cover_152012

def state_152056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_152056 : String := "42434440410606060A44094041054205430A44050505434409424041070A07074409424041094309090909"
theorem cover_152056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_152056)
  decide +kernel
#print axioms cover_152056

def state_152100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
def hex_152100 : String := "430A44414042070908074140420A430A44070A0A0A"
theorem cover_152100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_152100)
  decide +kernel
#print axioms cover_152100

def state_152122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 13)))
def hex_152122 : String := "440641420A4006060A"
theorem cover_152122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_152122)
  decide +kernel
#print axioms cover_152122
end Mub6.Numerical.CircleFullPrototype.Forest
