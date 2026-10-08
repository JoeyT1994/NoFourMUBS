import FourierPilotCircleTree001272
import FourierPilotCircleTree001311
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001271
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![13, 5, 4, 4, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001272.state FourierPilotCircleTree001311.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001272.covered FourierPilotCircleTree001311.covered
#print axioms covered
end FourierPilotCircleTree001271
