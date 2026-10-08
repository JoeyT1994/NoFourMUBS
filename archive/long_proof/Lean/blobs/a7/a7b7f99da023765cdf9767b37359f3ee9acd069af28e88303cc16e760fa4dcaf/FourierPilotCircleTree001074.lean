import FourierPilotCircleTree001075
import FourierPilotCircleTree001112
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001074
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![7, 7, 4, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001075.state FourierPilotCircleTree001112.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001075.covered FourierPilotCircleTree001112.covered
#print axioms covered
end FourierPilotCircleTree001074
