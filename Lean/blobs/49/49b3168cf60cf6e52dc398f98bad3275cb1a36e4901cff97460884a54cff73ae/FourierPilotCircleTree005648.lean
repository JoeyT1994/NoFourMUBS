import FourierPilotCircleTree005649
import FourierPilotCircleTree005660
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005648
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![3, 3, 3, 2, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005649.state FourierPilotCircleTree005660.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005649.covered FourierPilotCircleTree005660.covered
#print axioms covered
end FourierPilotCircleTree005648
