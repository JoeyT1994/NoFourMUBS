import FourierPilotCircleTree004562
import FourierPilotCircleTree004563
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004561
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![98, 46, 63, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004562.state FourierPilotCircleTree004563.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004562.covered FourierPilotCircleTree004563.covered
#print axioms covered
end FourierPilotCircleTree004561
