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
def state_946587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 107)))
def hex_946587 : String := "4340060A4042414443064006070644434006424107070A4042410707410608420707430640060A4106444306400642410608060642410A44070A0A"
theorem cover_946587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946587 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_946587)
  decide +kernel
#print axioms cover_946587

def state_946647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 106)))
def hex_946647 : String := "4305404241080841080542414405070509"
theorem cover_946647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_946647)
  decide +kernel
#print axioms cover_946647

def state_946665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 68 else 107)))
def hex_946665 : String := "40424144430540060506440505410605424144050A0505"
theorem cover_946665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946665 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_946665)
  decide +kernel
#print axioms cover_946665

def state_946691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 170) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 107)))
def hex_946691 : String := "444340424106080642410744050741440706054042080842074107074306404241060606424107074106440706"
theorem cover_946691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_946691)
  decide +kernel
#print axioms cover_946691

def state_946737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 171) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 214)))
def hex_946737 : String := "4340420805054008420708"
theorem cover_946737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_946737)
  decide +kernel
#print axioms cover_946737

def state_946748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 171) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 215)))
def hex_946748 : String := "43400642414443050706054106054042414443060806440843060941064408064241440707440707414443400607074306400607444305074306400607"
theorem cover_946748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_946748)
  decide +kernel
#print axioms cover_946748
end Mub6.Numerical.CircleFullD0.Forest
