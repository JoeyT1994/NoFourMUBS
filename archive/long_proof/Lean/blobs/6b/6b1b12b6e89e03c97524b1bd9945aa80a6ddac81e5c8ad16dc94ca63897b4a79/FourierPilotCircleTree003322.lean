import FourierPilotCircleTree003323
import FourierPilotCircleTree003324
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003322
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![60, 40, 54, 104, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003323.state FourierPilotCircleTree003324.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003323.covered FourierPilotCircleTree003324.covered
#print axioms covered
end FourierPilotCircleTree003322
