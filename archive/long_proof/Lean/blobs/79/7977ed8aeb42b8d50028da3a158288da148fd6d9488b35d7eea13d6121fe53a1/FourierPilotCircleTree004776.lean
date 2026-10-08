import FourierPilotCircleTree004777
import FourierPilotCircleTree004838
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004776
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![6, 6, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004777.state FourierPilotCircleTree004838.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004777.covered FourierPilotCircleTree004838.covered
#print axioms covered
end FourierPilotCircleTree004776
