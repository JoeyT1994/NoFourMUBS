import FourierPilotCircleTree004077
import FourierPilotCircleTree004106
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004076
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![10, 7, 13, 7, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004077.state FourierPilotCircleTree004106.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004077.covered FourierPilotCircleTree004106.covered
#print axioms covered
end FourierPilotCircleTree004076
