import FourierPilotCircleTree000159
import FourierPilotCircleTree000160
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000158
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 5, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000159.state FourierPilotCircleTree000160.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000159.covered FourierPilotCircleTree000160.covered
#print axioms covered
end FourierPilotCircleTree000158
