import FourierPilotCircleTree003322
import FourierPilotCircleTree003331
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003321
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![60, 40, 54, 52, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003322.state FourierPilotCircleTree003331.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003322.covered FourierPilotCircleTree003331.covered
#print axioms covered
end FourierPilotCircleTree003321
