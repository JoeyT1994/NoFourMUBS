import FourierPilotCircleTree001464
import FourierPilotCircleTree001499
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001463
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, false]
def state : State := ![5, 7, 6, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001464.state FourierPilotCircleTree001499.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001464.covered FourierPilotCircleTree001499.covered
#print axioms covered
end FourierPilotCircleTree001463
