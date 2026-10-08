import FourierPilotCircleTree005506
import FourierPilotCircleTree005507
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005505
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![6, 5, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005506.state FourierPilotCircleTree005507.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005506.covered FourierPilotCircleTree005507.covered
#print axioms covered
end FourierPilotCircleTree005505
