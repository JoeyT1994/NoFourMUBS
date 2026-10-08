import FourierPilotCircleTree002290
import FourierPilotCircleTree002291
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002289
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![8, 27, 20, 10, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002290.state FourierPilotCircleTree002291.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002290.covered FourierPilotCircleTree002291.covered
#print axioms covered
end FourierPilotCircleTree002289
