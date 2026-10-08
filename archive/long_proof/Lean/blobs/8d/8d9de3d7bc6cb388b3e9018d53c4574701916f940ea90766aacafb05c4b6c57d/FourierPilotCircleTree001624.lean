import FourierPilotCircleTree001625
import FourierPilotCircleTree001626
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001624
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![2, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001625.state FourierPilotCircleTree001626.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001625.covered FourierPilotCircleTree001626.covered
#print axioms covered
end FourierPilotCircleTree001624
