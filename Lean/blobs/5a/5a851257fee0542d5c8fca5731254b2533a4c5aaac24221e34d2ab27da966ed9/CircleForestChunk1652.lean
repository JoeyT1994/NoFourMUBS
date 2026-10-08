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
def state_2269725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 56)))
def hex_2269725 : String := "4142430A400A0A43400A0A40440A41420A43050A0A440A41420A050A0A"
theorem cover_2269725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2269725)
  decide +kernel
#print axioms cover_2269725

def state_2269754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 57)))
def hex_2269754 : String := "414243440A084406064344400A0A4041080708444041420643080606410806404106060842070A"
theorem cover_2269754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2269754)
  decide +kernel
#print axioms cover_2269754

def state_2269794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
def hex_2269794 : String := "44414342400606404441430A06064106064441430A060641060642064044060606430A06414342064006060606"
theorem cover_2269794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2269794)
  decide +kernel
#print axioms cover_2269794

def state_2269839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
def hex_2269839 : String := "44414342400606404441430A06064106064441430A06064106064206400606430A06414342064406060606"
theorem cover_2269839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269839 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2269839)
  decide +kernel
#print axioms cover_2269839

def state_2269885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 56)))
def hex_2269885 : String := "4142434044054105070540444105094142430544090905094441050A4142430505050A4305400905420A430808"
theorem cover_2269885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2269885)
  decide +kernel
#print axioms cover_2269885
end Mub6.Numerical.CircleFullD0.Forest
