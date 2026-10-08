import FourierPilotCircleTree000169
import FourierPilotCircleTree000170
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000168
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 11, 7, 10, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000169.state FourierPilotCircleTree000170.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000169.covered FourierPilotCircleTree000170.covered
#print axioms covered
end FourierPilotCircleTree000168
