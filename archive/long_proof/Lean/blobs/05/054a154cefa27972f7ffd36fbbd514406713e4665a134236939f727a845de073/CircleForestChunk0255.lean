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
def state_136627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
def hex_136627 : String := "414209430944400541420805050909"
theorem cover_136627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_136627)
  decide +kernel
#print axioms cover_136627

def state_136642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
def hex_136642 : String := "414243440809440709434440418D09418D42084305054009418D094440418D07418D0740418D09418D42074309074209430907"
theorem cover_136642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_136642)
  decide +kernel
#print axioms cover_136642

def state_136693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 55)))
def hex_136693 : String := "09"
theorem cover_136693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_136693)
  decide +kernel
#print axioms cover_136693

def state_136694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 55 else 27)))
def hex_136694 : String := "4440414207434407060607414207434407400607070740064106420606"
theorem cover_136694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136694 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_136694)
  decide +kernel
#print axioms cover_136694

def state_136723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 47) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
def hex_136723 : String := "4209430907"
theorem cover_136723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_136723)
  decide +kernel
#print axioms cover_136723

def state_136730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
def hex_136730 : String := "4041424305050505414243064406400541420605054305054243050505"
theorem cover_136730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_136730)
  decide +kernel
#print axioms cover_136730

def state_136759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 27)))
def hex_136759 : String := "40414243050505054142434440054107050744400541424344050544054005410705050540054108054305054243050505"
theorem cover_136759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_136759)
  decide +kernel
#print axioms cover_136759

def state_136809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 26)))
def hex_136809 : String := "404142440505050541424443400541420605050743400541424443050543054005410A0505054005410A054405054244050505"
theorem cover_136809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136809 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 51) (hex := hex_136809)
  decide +kernel
#print axioms cover_136809

def state_136861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
def hex_136861 : String := "4142434405054405050505"
theorem cover_136861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_136861)
  decide +kernel
#print axioms cover_136861
end Mub6.Numerical.CircleFullPrototype.Forest
