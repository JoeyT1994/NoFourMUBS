import FourierPilotCircleTree005061
import FourierPilotCircleTree005064
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005060
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![4, 4, 7, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005061.state FourierPilotCircleTree005064.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005061.covered FourierPilotCircleTree005064.covered
#print axioms covered
end FourierPilotCircleTree005060
