import FourierPilotCircleTree004472
import FourierPilotCircleTree004517
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004471
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![5, 6, 4, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004472.state FourierPilotCircleTree004517.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004472.covered FourierPilotCircleTree004517.covered
#print axioms covered
end FourierPilotCircleTree004471
