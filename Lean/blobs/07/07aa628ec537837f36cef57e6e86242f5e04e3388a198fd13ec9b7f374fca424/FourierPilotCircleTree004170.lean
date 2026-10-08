import FourierPilotCircleTree004171
import FourierPilotCircleTree004220
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004170
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![3, 3, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004171.state FourierPilotCircleTree004220.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004171.covered FourierPilotCircleTree004220.covered
#print axioms covered
end FourierPilotCircleTree004170
