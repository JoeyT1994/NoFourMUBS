import FourierPilotCircleTree000168
import FourierPilotCircleTree000189
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000167
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 11, 7, 10, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000168.state FourierPilotCircleTree000189.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000168.covered FourierPilotCircleTree000189.covered
#print axioms covered
end FourierPilotCircleTree000167
