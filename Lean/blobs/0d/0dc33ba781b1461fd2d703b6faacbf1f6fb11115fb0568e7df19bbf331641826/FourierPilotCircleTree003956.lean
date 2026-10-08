import FourierPilotCircleTree003957
import FourierPilotCircleTree003982
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003956
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 4, 4, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003957.state FourierPilotCircleTree003982.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003957.covered FourierPilotCircleTree003982.covered
#print axioms covered
end FourierPilotCircleTree003956
