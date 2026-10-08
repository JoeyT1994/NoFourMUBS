import FourierPilotCircleTree001645
import FourierPilotCircleTree001646
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001644
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![11, 14, 15, 8, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001645.state FourierPilotCircleTree001646.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001645.covered FourierPilotCircleTree001646.covered
#print axioms covered
end FourierPilotCircleTree001644
