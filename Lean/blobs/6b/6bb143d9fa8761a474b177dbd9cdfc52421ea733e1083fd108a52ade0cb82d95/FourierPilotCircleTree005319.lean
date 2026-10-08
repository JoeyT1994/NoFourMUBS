import FourierPilotCircleTree005320
import FourierPilotCircleTree005363
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005319
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![3, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005320.state FourierPilotCircleTree005363.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005320.covered FourierPilotCircleTree005363.covered
#print axioms covered
end FourierPilotCircleTree005319
