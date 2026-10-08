import FourierPilotCircleTree005568
import FourierPilotCircleTree005615
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005567
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 4, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005568.state FourierPilotCircleTree005615.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005568.covered FourierPilotCircleTree005615.covered
#print axioms covered
end FourierPilotCircleTree005567
