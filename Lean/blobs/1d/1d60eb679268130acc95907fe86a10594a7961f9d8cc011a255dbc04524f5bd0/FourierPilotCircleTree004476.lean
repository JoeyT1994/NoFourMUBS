import FourierPilotCircleTree004477
import FourierPilotCircleTree004516
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004476
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![11, 6, 4, 6, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004477.state FourierPilotCircleTree004516.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004477.covered FourierPilotCircleTree004516.covered
#print axioms covered
end FourierPilotCircleTree004476
