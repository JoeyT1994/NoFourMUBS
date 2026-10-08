import FourierPilotCircleTree002253
import FourierPilotCircleTree002258
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002252
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002253.state FourierPilotCircleTree002258.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002253.covered FourierPilotCircleTree002258.covered
#print axioms covered
end FourierPilotCircleTree002252
