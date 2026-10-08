import FourierPilotCircleTree003660
import FourierPilotCircleTree003661
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003659
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![3, 2, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003660.state FourierPilotCircleTree003661.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003660.covered FourierPilotCircleTree003661.covered
#print axioms covered
end FourierPilotCircleTree003659
