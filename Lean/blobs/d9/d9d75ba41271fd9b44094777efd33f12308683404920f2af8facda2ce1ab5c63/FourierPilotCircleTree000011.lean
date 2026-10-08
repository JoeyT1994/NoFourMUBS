import FourierPilotCircleTree000012
import FourierPilotCircleTree000013
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000011
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000012.state FourierPilotCircleTree000013.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000012.covered FourierPilotCircleTree000013.covered
#print axioms covered
end FourierPilotCircleTree000011
