import FourierPilotCircleTree001009
import FourierPilotCircleTree001012
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001008
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 4, 7, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001009.state FourierPilotCircleTree001012.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001009.covered FourierPilotCircleTree001012.covered
#print axioms covered
end FourierPilotCircleTree001008
