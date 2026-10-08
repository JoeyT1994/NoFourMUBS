import FourierPilotCircleTree005333
import FourierPilotCircleTree005334
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005332
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![7, 5, 7, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005333.state FourierPilotCircleTree005334.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005333.covered FourierPilotCircleTree005334.covered
#print axioms covered
end FourierPilotCircleTree005332
