import FourierPilotCircleTree005056
import FourierPilotCircleTree005107
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005055
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![4, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005056.state FourierPilotCircleTree005107.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005056.covered FourierPilotCircleTree005107.covered
#print axioms covered
end FourierPilotCircleTree005055
