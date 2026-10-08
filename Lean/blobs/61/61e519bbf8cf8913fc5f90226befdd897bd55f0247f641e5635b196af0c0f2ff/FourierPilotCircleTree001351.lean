import FourierPilotCircleTree001352
import FourierPilotCircleTree001373
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001351
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![14, 9, 4, 12, 11]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001352.state FourierPilotCircleTree001373.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001352.covered FourierPilotCircleTree001373.covered
#print axioms covered
end FourierPilotCircleTree001351
