import FourierPilotCircleTree005324
import FourierPilotCircleTree005325
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005323
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, true]
def state : State := ![6, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005324.state FourierPilotCircleTree005325.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005324.covered FourierPilotCircleTree005325.covered
#print axioms covered
end FourierPilotCircleTree005323
