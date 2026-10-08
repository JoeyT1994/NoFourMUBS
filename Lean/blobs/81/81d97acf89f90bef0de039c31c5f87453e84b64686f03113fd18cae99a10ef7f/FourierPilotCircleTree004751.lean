import FourierPilotCircleTree004752
import FourierPilotCircleTree004771
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004751
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004752.state FourierPilotCircleTree004771.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004752.covered FourierPilotCircleTree004771.covered
#print axioms covered
end FourierPilotCircleTree004751
