import FourierPilotCircleTree001211
import FourierPilotCircleTree001254
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001210
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![5, 6, 7, 7, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001211.state FourierPilotCircleTree001254.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001211.covered FourierPilotCircleTree001254.covered
#print axioms covered
end FourierPilotCircleTree001210
