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
def state_1471477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_1471477 : String := "4043410A4244400A090A0A4142090A424409094440430A410942090A090A09"
theorem cover_1471477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1471477)
  decide +kernel
#print axioms cover_1471477

def state_1471508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_1471508 : String := "4344080A4440424308080808400A4243080808"
theorem cover_1471508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1471508)
  decide +kernel
#print axioms cover_1471508

def state_1471529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_1471529 : String := "44404144420508424307404107070707440842430740410744070707074144050744050740414243074440070707070707"
theorem cover_1471529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1471529)
  decide +kernel
#print axioms cover_1471529

def state_1471582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_1471582 : String := "440842404143440842400A0707440842404341080841050508084344084240410707070744084240414308080808084108084041080808"
theorem cover_1471582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1471582)
  decide +kernel
#print axioms cover_1471582

def state_1471638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_1471638 : String := "420508"
theorem cover_1471638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471638 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1471638)
  decide +kernel
#print axioms cover_1471638

def state_1471643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
def hex_1471643 : String := "4341440542404341050505054043410806414405090608440542404341050505054043060608414405420540434105050505440542054043060505"
theorem cover_1471643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1471643)
  decide +kernel
#print axioms cover_1471643

def state_1471702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
def hex_1471702 : String := "4341050505"
theorem cover_1471702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1471702)
  decide +kernel
#print axioms cover_1471702

def state_1471707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 13)))
def hex_1471707 : String := "4043410808414406424043060643084205080644064240060806430808"
theorem cover_1471707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1471707)
  decide +kernel
#print axioms cover_1471707
end Mub6.Numerical.CircleFullD0.Forest
