import FourierPilotCircleTree001015
import FourierPilotCircleTree001016
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001014
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![4, 4, 7, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001015.state FourierPilotCircleTree001016.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001015.covered FourierPilotCircleTree001016.covered
#print axioms covered
end FourierPilotCircleTree001014
