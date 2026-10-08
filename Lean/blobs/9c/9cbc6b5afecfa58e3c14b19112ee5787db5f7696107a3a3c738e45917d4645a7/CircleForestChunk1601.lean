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
def state_2257470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 54)))
def hex_2257470 : String := "4440434142444005434109050505BE4205BE41420544050505434142440909BE4205BE414205444043BE0543BE05050540434105050543414205BE0505"
theorem cover_2257470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2257470)
  decide +kernel
#print axioms cover_2257470

def state_2257532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 108)))
def hex_2257532 : String := "4043BE414244084043BE0543BE05080843BE414244074043BE4107050707424408400543BE0508"
theorem cover_2257532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257532 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2257532)
  decide +kernel
#print axioms cover_2257532

def state_2257571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 109)))
def hex_2257571 : String := "4043BE414205444043BE0543BE0A400543BE05420544050543BE4142404443BE05054443BE05054044070A074205404443BE05054443BE0505"
theorem cover_2257571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2257571)
  decide +kernel
#print axioms cover_2257571

def state_2257628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
def hex_2257628 : String := "4244400543414205BE050505444008434241BE0808084043420541BE050543420541BE400544080505"
theorem cover_2257628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2257628)
  decide +kernel
#print axioms cover_2257628

def state_2257669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 54)))
def hex_2257669 : String := "4142054440434142050808054341074205084107054005434142050705054205440505"
theorem cover_2257669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2257669)
  decide +kernel
#print axioms cover_2257669
end Mub6.Numerical.CircleFullD0.Forest
