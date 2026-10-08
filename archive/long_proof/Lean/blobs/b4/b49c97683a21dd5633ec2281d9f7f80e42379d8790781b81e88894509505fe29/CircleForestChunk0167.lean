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
def state_977522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 42 else 28)))
def hex_977522 : String := "44424041430544054240414305080509050509054240414306070741430944424041090909094240070A0A4307440907400741430544050705"
theorem cover_977522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_977522)
  decide +kernel
#print axioms cover_977522

def state_977580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 56)))
def hex_977580 : String := "42404143440842400A410808400A410805080A41434405424041080909090843090A40414305080505"
theorem cover_977580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_977580)
  decide +kernel
#print axioms cover_977580

def state_977625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 86 else 57)))
def hex_977625 : String := "44424041430744080707414344424007410843070740074108070744084205400741430705074307440A074007414307440807430707424007414307050707"
theorem cover_977625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_977625)
  decide +kernel
#print axioms cover_977625

def state_977688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 88) else (if j.val < 3 then 62 else (if j.val < 4 then 87 else 57)))
def hex_977688 : String := "4442400A4143440805080A400A4143440842400A41080A4007410807080A420540074143444205070505430707"
theorem cover_977688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_977688)
  decide +kernel
#print axioms cover_977688

def state_977733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 89) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
def hex_977733 : String := "4307440A07"
theorem cover_977733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_977733)
  decide +kernel
#print axioms cover_977733
end Mub6.Numerical.CircleFullD0.Forest
