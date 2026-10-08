import FourierPilotCircleTree000724
import FourierPilotCircleTree000787
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000723
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![6, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000724.state FourierPilotCircleTree000787.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000724.covered FourierPilotCircleTree000787.covered
#print axioms covered
end FourierPilotCircleTree000723
