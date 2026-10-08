import FourierPilotCircleTree000161
import FourierPilotCircleTree000162
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000160
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![7, 5, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000161.state FourierPilotCircleTree000162.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000161.covered FourierPilotCircleTree000162.covered
#print axioms covered
end FourierPilotCircleTree000160
