import FourierPilotCircleTree003422
import FourierPilotCircleTree003465
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003421
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![4, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003422.state FourierPilotCircleTree003465.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003422.covered FourierPilotCircleTree003465.covered
#print axioms covered
end FourierPilotCircleTree003421
