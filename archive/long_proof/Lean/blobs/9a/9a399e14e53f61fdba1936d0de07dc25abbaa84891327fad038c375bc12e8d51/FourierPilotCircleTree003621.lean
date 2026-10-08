import FourierPilotCircleTree003622
import FourierPilotCircleTree003649
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003621
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![23, 24, 15, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003622.state FourierPilotCircleTree003649.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003622.covered FourierPilotCircleTree003649.covered
#print axioms covered
end FourierPilotCircleTree003621
