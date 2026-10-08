import FourierPilotCircleTree000686
import FourierPilotCircleTree000687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000685
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000686.state FourierPilotCircleTree000687.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000686.covered FourierPilotCircleTree000687.covered
#print axioms covered
end FourierPilotCircleTree000685
