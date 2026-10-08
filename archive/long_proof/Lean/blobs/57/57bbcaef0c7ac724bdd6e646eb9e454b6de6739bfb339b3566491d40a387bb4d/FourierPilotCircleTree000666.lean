import FourierPilotCircleTree000667
import FourierPilotCircleTree000668
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000666
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![4, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000667.state FourierPilotCircleTree000668.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000667.covered FourierPilotCircleTree000668.covered
#print axioms covered
end FourierPilotCircleTree000666
