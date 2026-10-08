import FourierPilotCircleTree001381
import FourierPilotCircleTree001382
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001380
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001381.state FourierPilotCircleTree001382.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001381.covered FourierPilotCircleTree001382.covered
#print axioms covered
end FourierPilotCircleTree001380
