import FourierPilotCircleTree000623
import FourierPilotCircleTree000658
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000622
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![23, 22, 10, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000623.state FourierPilotCircleTree000658.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000623.covered FourierPilotCircleTree000658.covered
#print axioms covered
end FourierPilotCircleTree000622
