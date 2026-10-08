import FourierPilotCircleTree003606
import FourierPilotCircleTree003607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003605
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 6, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003606.state FourierPilotCircleTree003607.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003606.covered FourierPilotCircleTree003607.covered
#print axioms covered
end FourierPilotCircleTree003605
