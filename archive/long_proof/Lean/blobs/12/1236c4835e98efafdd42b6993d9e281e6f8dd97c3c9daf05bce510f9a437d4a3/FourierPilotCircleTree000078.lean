import FourierPilotCircleTree000079
import FourierPilotCircleTree000098
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000078
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![10, 7, 13, 4, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000079.state FourierPilotCircleTree000098.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000079.covered FourierPilotCircleTree000098.covered
#print axioms covered
end FourierPilotCircleTree000078
