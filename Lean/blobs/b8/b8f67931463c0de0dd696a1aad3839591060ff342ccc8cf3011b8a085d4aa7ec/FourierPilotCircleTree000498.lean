import FourierPilotCircleTree000499
import FourierPilotCircleTree000536
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000498
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 7, 7, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000499.state FourierPilotCircleTree000536.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000499.covered FourierPilotCircleTree000536.covered
#print axioms covered
end FourierPilotCircleTree000498
