import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1327122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1327122 : String := "40414243444044080506054440080A0843444042444143060543050505444143064005064306050542440A0606400506444042430805430505420A43444109064105050908424344400841060806444008410608064344404142060542050541064244430606060606444005414206050505414243440A060A4344420A440A060644420A434409060906424344410A440A080844410A43440707070643444142440A06064244404341064442080606410644420A0606430A410A0A4006430A06444006434106420A0641064244430A0A060606064441420A064243444041064407050A0644070543444005410605050506"
theorem cover_1327122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 241) (hex := hex_1327122)
  decide +kernel
#print axioms cover_1327122

def state_1327363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
def hex_1327363 : String := "444041420A434440050740420A07070A424344400541060540080A064344054005410A054406400806410A420A4344074107420A07064041420A434440080A08084243444041070606060A43444005410A05054440090A4005410805410A420A4344410A0641420605050A"
theorem cover_1327363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327363 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 107) (hex := hex_1327363)
  decide +kernel
#print axioms cover_1327363


end Mub6.Numerical.CircleFullD0.Forest
