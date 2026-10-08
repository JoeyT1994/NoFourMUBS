import FourierPilotCircleTree000424
import FourierPilotCircleTree000425
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000423
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![77, 38, 32, 104, 104]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000424.state FourierPilotCircleTree000425.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000424.covered FourierPilotCircleTree000425.covered
#print axioms covered
end FourierPilotCircleTree000423
