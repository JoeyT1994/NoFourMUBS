import FourierPilotCircleTree001013
import FourierPilotCircleTree001014
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001012
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 4, 7, 13, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001013.state FourierPilotCircleTree001014.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001013.covered FourierPilotCircleTree001014.covered
#print axioms covered
end FourierPilotCircleTree001012
