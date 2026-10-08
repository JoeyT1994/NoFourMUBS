import FourierPilotCircleTree005079
import FourierPilotCircleTree005080
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005078
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![19, 19, 15, 26, 26]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005079.state FourierPilotCircleTree005080.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005079.covered FourierPilotCircleTree005080.covered
#print axioms covered
end FourierPilotCircleTree005078
