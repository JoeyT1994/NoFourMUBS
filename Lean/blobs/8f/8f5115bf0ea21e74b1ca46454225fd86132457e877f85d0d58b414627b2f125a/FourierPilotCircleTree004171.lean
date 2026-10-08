import FourierPilotCircleTree004172
import FourierPilotCircleTree004173
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004171
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 3, 2, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004172.state FourierPilotCircleTree004173.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004172.covered FourierPilotCircleTree004173.covered
#print axioms covered
end FourierPilotCircleTree004171
