import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1038511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_1038511 : String := "4344404206410506420605404244060644064143060506424406064406064440424305054305410505054042434405060A43440505064243060505"
theorem cover_1038511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1038511)
  decide +kernel
#print axioms cover_1038511

def state_1038571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_1038571 : String := "4344404106074106420606400741440606074440414306064306424406060641430606430606404143070A0A4143060606"
theorem cover_1038571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1038571)
  decide +kernel
#print axioms cover_1038571

def state_1038620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_1038620 : String := "43444007414206060740414244060607074142060606444041424305054305064243060506414205050640414206060606"
theorem cover_1038620 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038620 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 49) (hex := hex_1038620)
  decide +kernel
#print axioms cover_1038620

def state_1038669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1038669 : String := "41424344400608084408084344094244060644060644050642434409414406064406064441430606430606064344090606"
theorem cover_1038669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 49) (hex := hex_1038669)
  decide +kernel
#print axioms cover_1038669

def state_1038721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1038721 : String := "43444007080744400943080907"
theorem cover_1038721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038721 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1038721)
  decide +kernel
#print axioms cover_1038721
end Mub6.Numerical.CircleFullD0.Forest
