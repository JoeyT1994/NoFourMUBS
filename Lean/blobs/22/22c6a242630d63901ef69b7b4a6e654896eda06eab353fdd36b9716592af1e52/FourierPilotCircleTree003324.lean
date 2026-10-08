import FourierPilotCircleTree003325
import FourierPilotCircleTree003330
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003324
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![60, 40, 54, 104, 107]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003325.state FourierPilotCircleTree003330.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003325.covered FourierPilotCircleTree003330.covered
#print axioms covered
end FourierPilotCircleTree003324
