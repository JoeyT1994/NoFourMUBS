import FourierPilotCircleTree001460
import FourierPilotCircleTree001461
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001459
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![5, 7, 6, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001460.state FourierPilotCircleTree001461.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001460.covered FourierPilotCircleTree001461.covered
#print axioms covered
end FourierPilotCircleTree001459
