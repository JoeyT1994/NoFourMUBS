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
def state_5535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_5535 : String := "42434440090840410709080943444005410508404142430509054243080905410808444041094244430505090541090940094109420908"
theorem cover_5535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5535 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_5535)
  decide +kernel
#print axioms cover_5535

def state_5591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_5591 : String := "434440434408084441080A090840434142074408074244090644430609060943410842440806440806410842094408094440440A090909"
theorem cover_5591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_5591)
  decide +kernel
#print axioms cover_5591

def state_5647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
def hex_5647 : String := "444042434405084441050541050543050542080840424341440507064109440506430505424341084406064108440840420943050508430841084405400508"
theorem cover_5647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_5647)
  decide +kernel
#print axioms cover_5647

def state_5710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_5710 : String := "444042444143050A06410943050644050542440A09444143050707084042090542410943440909094143080843440505440505"
theorem cover_5710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5710 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 51) (hex := hex_5710)
  decide +kernel
#print axioms cover_5710

def state_5770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
def hex_5770 : String := "40054344410642060606440605"
theorem cover_5770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5770 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_5770)
  decide +kernel
#print axioms cover_5770

def state_5784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
def hex_5784 : String := "434441094240054344090505090505"
theorem cover_5784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_5784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_5784)
  decide +kernel
#print axioms cover_5784
end Mub6.Numerical.CircleFullPrototype.Forest
