import FourierPilotCircleTree001209
import FourierPilotCircleTree001210
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001208
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![5, 6, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001209.state FourierPilotCircleTree001210.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001209.covered FourierPilotCircleTree001210.covered
#print axioms covered
end FourierPilotCircleTree001208
