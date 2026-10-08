import FourierPilotCircleTree001212
import FourierPilotCircleTree001253
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001211
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![5, 6, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001212.state FourierPilotCircleTree001253.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001212.covered FourierPilotCircleTree001253.covered
#print axioms covered
end FourierPilotCircleTree001211
