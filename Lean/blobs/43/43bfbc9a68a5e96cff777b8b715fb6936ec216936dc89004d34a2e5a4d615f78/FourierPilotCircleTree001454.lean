import FourierPilotCircleTree001455
import FourierPilotCircleTree001456
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001454
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![2, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001455.state FourierPilotCircleTree001456.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001455.covered FourierPilotCircleTree001456.covered
#print axioms covered
end FourierPilotCircleTree001454
