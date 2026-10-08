import FourierPilotCircleTree000130
import FourierPilotCircleTree000141
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000129
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![27, 9, 10, 15, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000130.state FourierPilotCircleTree000141.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000130.covered FourierPilotCircleTree000141.covered
#print axioms covered
end FourierPilotCircleTree000129
