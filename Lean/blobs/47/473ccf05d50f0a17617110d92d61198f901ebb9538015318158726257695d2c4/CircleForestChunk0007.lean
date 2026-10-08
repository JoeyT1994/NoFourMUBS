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
def state_1363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1363 : String := "4041424344054005060505424344400506064405084344050905414243440706074344050905424306440706430A4405420605"
theorem cover_1363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 51) (hex := hex_1363)
  decide +kernel
#print axioms cover_1363

def state_1415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1415 : String := "404142430544400507050542434406054406400507430506414243440705074305444105060542434409074440060707434406054406420705"
theorem cover_1415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 57) (hex := hex_1415)
  decide +kernel
#print axioms cover_1415

def state_1472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1472 : String := "4041424305440509054243440540050844400544050509430544050541424308444105070843050842430744074005054308440505"
theorem cover_1472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1472)
  decide +kernel
#print axioms cover_1472

def state_1527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1527 : String := "4041420543444005070505424344060505434406080641424344410507050543440709440A0542430844060543074406430705"
theorem cover_1527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 51) (hex := hex_1527)
  decide +kernel
#print axioms cover_1527
end Mub6.Numerical.CircleFullD0.Forest
