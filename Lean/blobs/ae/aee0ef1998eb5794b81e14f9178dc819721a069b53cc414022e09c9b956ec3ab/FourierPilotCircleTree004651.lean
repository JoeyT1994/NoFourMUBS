import FourierPilotCircleTree004652
import FourierPilotCircleTree004653
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004651
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![5, 5, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004652.state FourierPilotCircleTree004653.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004652.covered FourierPilotCircleTree004653.covered
#print axioms covered
end FourierPilotCircleTree004651
