import FourierPilotCircleTree000729
import FourierPilotCircleTree000784
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000728
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![6, 6, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000729.state FourierPilotCircleTree000784.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000729.covered FourierPilotCircleTree000784.covered
#print axioms covered
end FourierPilotCircleTree000728
