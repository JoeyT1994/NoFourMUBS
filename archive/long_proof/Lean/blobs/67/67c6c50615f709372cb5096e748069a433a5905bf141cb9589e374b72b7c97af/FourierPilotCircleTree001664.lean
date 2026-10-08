import FourierPilotCircleTree001665
import FourierPilotCircleTree001674
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001664
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![4, 7, 6, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001665.state FourierPilotCircleTree001674.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001665.covered FourierPilotCircleTree001674.covered
#print axioms covered
end FourierPilotCircleTree001664
