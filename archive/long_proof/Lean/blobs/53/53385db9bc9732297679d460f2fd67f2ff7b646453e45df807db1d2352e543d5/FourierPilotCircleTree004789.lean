import FourierPilotCircleTree004790
import FourierPilotCircleTree004791
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004789
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![24, 25, 13, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004790.state FourierPilotCircleTree004791.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004790.covered FourierPilotCircleTree004791.covered
#print axioms covered
end FourierPilotCircleTree004789
