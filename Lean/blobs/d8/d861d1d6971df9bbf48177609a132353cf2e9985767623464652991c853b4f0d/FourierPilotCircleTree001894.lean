import FourierPilotCircleTree001895
import FourierPilotCircleTree001896
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001894
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![93, 98, 64, 107, 84]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree001895.state FourierPilotCircleTree001896.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001895.covered FourierPilotCircleTree001896.covered
#print axioms covered
end FourierPilotCircleTree001894
