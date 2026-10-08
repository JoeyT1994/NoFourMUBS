import FourierPilotCircleTree000663
import FourierPilotCircleTree000664
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000662
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000663.state FourierPilotCircleTree000664.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000663.covered FourierPilotCircleTree000664.covered
#print axioms covered
end FourierPilotCircleTree000662
