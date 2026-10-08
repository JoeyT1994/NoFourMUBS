import FourierPilotCircleTree001324
import FourierPilotCircleTree001331
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001323
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![14, 10, 8, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001324.state FourierPilotCircleTree001331.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001324.covered FourierPilotCircleTree001331.covered
#print axioms covered
end FourierPilotCircleTree001323
