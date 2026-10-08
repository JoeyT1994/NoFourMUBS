import FourierPilotCircleTree000180
import FourierPilotCircleTree000181
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000179
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![28, 23, 31, 21, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000180.state FourierPilotCircleTree000181.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000180.covered FourierPilotCircleTree000181.covered
#print axioms covered
end FourierPilotCircleTree000179
