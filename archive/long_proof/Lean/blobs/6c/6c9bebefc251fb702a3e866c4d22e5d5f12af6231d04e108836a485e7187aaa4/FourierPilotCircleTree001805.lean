import FourierPilotCircleTree001806
import FourierPilotCircleTree001833
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001805
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![3, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001806.state FourierPilotCircleTree001833.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001806.covered FourierPilotCircleTree001833.covered
#print axioms covered
end FourierPilotCircleTree001805
