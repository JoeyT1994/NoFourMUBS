import FourierPilotCircleTree000489
import FourierPilotCircleTree000490
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000488
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![7, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000489.state FourierPilotCircleTree000490.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000489.covered FourierPilotCircleTree000490.covered
#print axioms covered
end FourierPilotCircleTree000488
