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
def state_976581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
def hex_976581 : String := "4244060544400A4143440606060640410507414342050705430705"
theorem cover_976581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_976581)
  decide +kernel
#print axioms cover_976581

def state_976608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 15)))
def hex_976608 : String := "40410507414342054440050805054342444005410507050705"
theorem cover_976608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_976608)
  decide +kernel
#print axioms cover_976608

def state_976635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_976635 : String := "414307444240074143070A0A400741430707070707"
theorem cover_976635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_976635)
  decide +kernel
#print axioms cover_976635

def state_976660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 28)))
def hex_976660 : String := "40414443074240074144430742400707070707070707414443094240414409430742400709090909094307424007410A094007094409430707"
theorem cover_976660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_976660)
  decide +kernel
#print axioms cover_976660

def state_976717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 28)))
def hex_976717 : String := "40074144054305424006090505"
theorem cover_976717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_976717)
  decide +kernel
#print axioms cover_976717

def state_976730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 29)))
def hex_976730 : String := "42400741444307420A07070707"
theorem cover_976730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_976730)
  decide +kernel
#print axioms cover_976730

def state_976750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
def hex_976750 : String := "404143070A074143444240084108084007410808424007414307050707440842054007414307050A43440A070A"
theorem cover_976750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_976750)
  decide +kernel
#print axioms cover_976750

def state_976795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
def hex_976795 : String := "4007414344424007090507440842400741430708070743070A"
theorem cover_976795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_976795)
  decide +kernel
#print axioms cover_976795

def state_976820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 57)))
def hex_976820 : String := "424007414307050707"
theorem cover_976820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_976820)
  decide +kernel
#print axioms cover_976820

def state_976829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 28)))
def hex_976829 : String := "440A4205400A41434442050705090A"
theorem cover_976829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_976829)
  decide +kernel
#print axioms cover_976829
end Mub6.Numerical.CircleFullD0.Forest
