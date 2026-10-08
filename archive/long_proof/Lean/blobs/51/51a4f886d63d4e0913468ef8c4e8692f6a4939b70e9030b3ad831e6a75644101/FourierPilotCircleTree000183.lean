import FourierPilotCircleTree000184
import FourierPilotCircleTree000185
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000183
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![28, 47, 31, 21, 31]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000184.state FourierPilotCircleTree000185.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000184.covered FourierPilotCircleTree000185.covered
#print axioms covered
end FourierPilotCircleTree000183
