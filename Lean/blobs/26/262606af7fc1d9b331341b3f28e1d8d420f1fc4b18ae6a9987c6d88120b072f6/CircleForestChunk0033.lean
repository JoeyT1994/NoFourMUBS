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
def state_945399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 26)))
def hex_945399 : String := "414443400842080808434006424144430640060806440A43060641064408064042094105084241050A414408054408430605440843400A420A414408060A0A"
theorem cover_945399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_945399)
  decide +kernel
#print axioms cover_945399

def state_945465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 52)))
def hex_945465 : String := "4340420A440841434008420708080842074407410707400A06"
theorem cover_945465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_945465)
  decide +kernel
#print axioms cover_945465

def state_945493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 100 else (if j.val < 4 then 34 else 53)))
def hex_945493 : String := "4109440A09"
theorem cover_945493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_945493)
  decide +kernel
#print axioms cover_945493

def state_945499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 53)))
def hex_945499 : String := "4443404209440809424441070709444143400807070841094340420906420707094009420744070909"
theorem cover_945499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_945499)
  decide +kernel
#print axioms cover_945499

def state_945540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 85) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 53)))
def hex_945540 : String := "4443400A420A41440843400A4205050A0A0A43404209410609420941444340060909094443400A05090909"
theorem cover_945540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_945540)
  decide +kernel
#print axioms cover_945540

def state_945584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 100 else (if j.val < 4 then 34 else 53)))
def hex_945584 : String := "41440707440707"
theorem cover_945584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_945584)
  decide +kernel
#print axioms cover_945584

def state_945592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 53)))
def hex_945592 : String := "44434042074407070707434042094109440709420707400907"
theorem cover_945592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_945592)
  decide +kernel
#print axioms cover_945592
end Mub6.Numerical.CircleFullD0.Forest
