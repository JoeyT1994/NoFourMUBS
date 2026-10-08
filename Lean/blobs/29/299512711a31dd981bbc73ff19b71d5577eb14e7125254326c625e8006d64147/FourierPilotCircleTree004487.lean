import FourierPilotCircleTree004488
import FourierPilotCircleTree004511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004487
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, true]
def state : State := ![23, 24, 8, 26, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004488.state FourierPilotCircleTree004511.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004488.covered FourierPilotCircleTree004511.covered
#print axioms covered
end FourierPilotCircleTree004487
