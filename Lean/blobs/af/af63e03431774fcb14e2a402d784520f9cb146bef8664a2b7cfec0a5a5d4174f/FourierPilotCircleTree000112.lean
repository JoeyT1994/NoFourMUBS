import FourierPilotCircleTree000113
import FourierPilotCircleTree000114
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000112
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![6, 4, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000113.state FourierPilotCircleTree000114.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000113.covered FourierPilotCircleTree000114.covered
#print axioms covered
end FourierPilotCircleTree000112
