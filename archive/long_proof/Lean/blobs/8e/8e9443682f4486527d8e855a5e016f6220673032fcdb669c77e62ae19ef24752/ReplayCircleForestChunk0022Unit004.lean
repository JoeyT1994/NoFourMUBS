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
def state_157096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_157096 : String := "4043414244064041424406430606440643094042060906424406434041420643070607064041064206440643070A064409430940414244064340410942440682090640410642064305050644094309404109050942444305054340080740420A050A44054305050906094244400806404241440843070A074144094307404241440543050505054207094405074207090941424406404341064206440640434142064405400706420A050A0641060A06440640434142440640070609424405404305050905410742440540050A054309410642060942440640430A0A0A4405400543090A43094106420609"
theorem cover_157096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 235) (hex := hex_157096)
  decide +kernel
#print axioms cover_157096
end Mub6.Numerical.CircleFullPrototype.Forest
