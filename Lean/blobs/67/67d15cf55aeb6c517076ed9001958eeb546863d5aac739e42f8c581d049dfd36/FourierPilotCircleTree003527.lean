import FourierPilotCircleTree003528
import FourierPilotCircleTree003581
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003527
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003528.state FourierPilotCircleTree003581.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003528.covered FourierPilotCircleTree003581.covered
#print axioms covered
end FourierPilotCircleTree003527
