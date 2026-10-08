import FourierPilotCircleTree000175
import FourierPilotCircleTree000176
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000174
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![14, 23, 15, 10, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000175.state FourierPilotCircleTree000176.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000175.covered FourierPilotCircleTree000176.covered
#print axioms covered
end FourierPilotCircleTree000174
