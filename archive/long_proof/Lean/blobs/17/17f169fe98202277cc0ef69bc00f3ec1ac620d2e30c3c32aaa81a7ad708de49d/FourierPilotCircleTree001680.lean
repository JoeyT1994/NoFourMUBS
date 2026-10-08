import FourierPilotCircleTree001681
import FourierPilotCircleTree001726
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001680
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![5, 7, 6, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001681.state FourierPilotCircleTree001726.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001681.covered FourierPilotCircleTree001726.covered
#print axioms covered
end FourierPilotCircleTree001680
