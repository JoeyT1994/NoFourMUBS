import FourierPilotCircleTree003605
import FourierPilotCircleTree003654
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003604
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003605.state FourierPilotCircleTree003654.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003605.covered FourierPilotCircleTree003654.covered
#print axioms covered
end FourierPilotCircleTree003604
