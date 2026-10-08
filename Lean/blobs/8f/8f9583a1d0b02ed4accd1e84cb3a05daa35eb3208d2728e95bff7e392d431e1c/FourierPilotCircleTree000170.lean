import FourierPilotCircleTree000171
import FourierPilotCircleTree000172
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000170
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 11, 15, 10, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000171.state FourierPilotCircleTree000172.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000171.covered FourierPilotCircleTree000172.covered
#print axioms covered
end FourierPilotCircleTree000170
