import FourierPilotCircleTree004717
import FourierPilotCircleTree004734
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004716
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004717.state FourierPilotCircleTree004734.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004717.covered FourierPilotCircleTree004734.covered
#print axioms covered
end FourierPilotCircleTree004716
