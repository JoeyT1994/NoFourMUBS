import FourierPilotCircleTree004465
import FourierPilotCircleTree004466
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004464
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![2, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004465.state FourierPilotCircleTree004466.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004465.covered FourierPilotCircleTree004466.covered
#print axioms covered
end FourierPilotCircleTree004464
