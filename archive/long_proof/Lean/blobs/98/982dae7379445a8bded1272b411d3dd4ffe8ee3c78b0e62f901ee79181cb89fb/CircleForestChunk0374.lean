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
def state_165187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
def hex_165187 : String := "42434105444340054205410544060540054205090541054409054341440905444243060906420543064005410509410509"
theorem cover_165187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_165187)
  decide +kernel
#print axioms cover_165187

def state_165237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
def hex_165237 : String := "43414407054440434207074241050841054408400507430742070740054307420507410544404208094208434107080805"
theorem cover_165237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_165237)
  decide +kernel
#print axioms cover_165237

def state_165287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
def hex_165287 : String := "414407074440424307410944094009074306094207074042434105440705054308410544424005070605420707"
theorem cover_165287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_165287)
  decide +kernel
#print axioms cover_165287

def state_165332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
def hex_165332 : String := "414409054440094243410744074009070909404205434105090942434105444005070541054440050605430A0A"
theorem cover_165332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_165332)
  decide +kernel
#print axioms cover_165332

def state_165377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_165377 : String := "43440741074243064406400607064409414244094009070942440940434109060943410744424006070608410944094240090A0844094009430609"
theorem cover_165377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_165377)
  decide +kernel
#print axioms cover_165377
end Mub6.Numerical.CircleFullPrototype.Forest
