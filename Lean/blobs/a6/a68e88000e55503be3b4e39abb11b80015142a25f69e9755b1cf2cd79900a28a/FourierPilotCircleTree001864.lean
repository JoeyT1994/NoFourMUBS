import FourierPilotCircleTree001865
import FourierPilotCircleTree001866
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001864
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, false]
def state : State := ![5, 6, 4, 6, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001865.state FourierPilotCircleTree001866.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001865.covered FourierPilotCircleTree001866.covered
#print axioms covered
end FourierPilotCircleTree001864
