import FourierPilotCircleTree003221
import FourierPilotCircleTree003238
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003220
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![4, 6, 4, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003221.state FourierPilotCircleTree003238.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003221.covered FourierPilotCircleTree003238.covered
#print axioms covered
end FourierPilotCircleTree003220
