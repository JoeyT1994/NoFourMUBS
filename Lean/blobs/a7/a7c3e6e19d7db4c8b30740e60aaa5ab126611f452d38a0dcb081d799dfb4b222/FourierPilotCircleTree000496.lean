import FourierPilotCircleTree000497
import FourierPilotCircleTree000538
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000496
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 7, 5, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000497.state FourierPilotCircleTree000538.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000497.covered FourierPilotCircleTree000538.covered
#print axioms covered
end FourierPilotCircleTree000496
