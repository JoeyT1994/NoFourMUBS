import FourierPilotCircleTree005349
import FourierPilotCircleTree005360
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005348
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![14, 23, 15, 21, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree005349.state FourierPilotCircleTree005360.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005349.covered FourierPilotCircleTree005360.covered
#print axioms covered
end FourierPilotCircleTree005348
