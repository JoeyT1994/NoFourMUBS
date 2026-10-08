import FourierPilotCircleTree005339
import FourierPilotCircleTree005362
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005338
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![7, 11, 7, 5, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005339.state FourierPilotCircleTree005362.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005339.covered FourierPilotCircleTree005362.covered
#print axioms covered
end FourierPilotCircleTree005338
