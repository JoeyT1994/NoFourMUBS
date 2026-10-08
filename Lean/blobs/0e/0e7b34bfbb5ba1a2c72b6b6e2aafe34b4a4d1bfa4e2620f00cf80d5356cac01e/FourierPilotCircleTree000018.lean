import FourierPilotCircleTree000019
import FourierPilotCircleTree000020
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000018
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000019.state FourierPilotCircleTree000020.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000019.covered FourierPilotCircleTree000020.covered
#print axioms covered
end FourierPilotCircleTree000018
