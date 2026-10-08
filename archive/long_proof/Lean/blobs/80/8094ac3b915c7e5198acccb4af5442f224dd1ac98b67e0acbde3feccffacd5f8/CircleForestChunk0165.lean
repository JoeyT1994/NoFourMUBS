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
def state_977058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 57)))
def hex_977058 : String := "4041434442054007414307050705054307444205400741050705414344420540410A090905054344424041050606094205074442050605"
theorem cover_977058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_977058)
  decide +kernel
#print axioms cover_977058

def state_977114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 57)))
def hex_977114 : String := "414307444240074143444205070505430744420507054007414307444240074143070507400741090707070707"
theorem cover_977114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_977114)
  decide +kernel
#print axioms cover_977114

def state_977159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 44) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 57)))
def hex_977159 : String := "414344090A44424041430A0543094442050905410A094041430944090A0909420540410A070A430944424041430744060509090942400741050707"
theorem cover_977159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977159 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_977159)
  decide +kernel
#print axioms cover_977159

def state_977219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 56)))
def hex_977219 : String := "4240414344064205400505060606404143440842400A41080A400A410808080A414344084206404108430806060606"
theorem cover_977219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_977219)
  decide +kernel
#print axioms cover_977219

def state_977267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 60 else (if j.val < 4 then 43 else 57)))
def hex_977267 : String := "05"
theorem cover_977267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_977267)
  decide +kernel
#print axioms cover_977267
end Mub6.Numerical.CircleFullD0.Forest
