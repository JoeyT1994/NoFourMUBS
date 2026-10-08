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
def state_955454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_955454 : String := "41424344400641064208060644400841050805430644400608064243444007410807064408400741420505074306440806"
theorem cover_955454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_955454)
  decide +kernel
#print axioms cover_955454

def state_955507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 108)))
def hex_955507 : String := "40414244084306054408064244084306084408064142444308084340060A4005410542050844084306400609424408434009094008414208080809"
theorem cover_955507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_955507)
  decide +kernel
#print axioms cover_955507

def state_955566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
def hex_955566 : String := "400641424306050642434440060A06444041054205064105420543090505430644400641060906"
theorem cover_955566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_955566)
  decide +kernel
#print axioms cover_955566

def state_955605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 54)))
def hex_955605 : String := "44404142050842080841424408054408054244084340050805440843080540054105420543444005410542054309050505"
theorem cover_955605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_955605)
  decide +kernel
#print axioms cover_955605

def state_955654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 107 else (if j.val < 4 then 36 else 54)))
def hex_955654 : String := "4344400609064440414208080841424408430805094208084006414243060506424344400609050543064440060905"
theorem cover_955654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_955654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_955654)
  decide +kernel
#print axioms cover_955654
end Mub6.Numerical.CircleFullD0.Forest
