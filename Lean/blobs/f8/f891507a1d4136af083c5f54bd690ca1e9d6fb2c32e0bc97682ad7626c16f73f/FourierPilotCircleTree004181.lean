import FourierPilotCircleTree004182
import FourierPilotCircleTree004211
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004181
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![14, 12, 4, 10, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004182.state FourierPilotCircleTree004211.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004182.covered FourierPilotCircleTree004211.covered
#print axioms covered
end FourierPilotCircleTree004181
