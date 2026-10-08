import FourierPilotCircleTree000394
import FourierPilotCircleTree000445
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000393
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![2, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000394.state FourierPilotCircleTree000445.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000394.covered FourierPilotCircleTree000445.covered
#print axioms covered
end FourierPilotCircleTree000393
