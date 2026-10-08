import FourierPilotCircleTree005474
import FourierPilotCircleTree005503
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005473
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![6, 4, 4, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree005474.state FourierPilotCircleTree005503.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005474.covered FourierPilotCircleTree005503.covered
#print axioms covered
end FourierPilotCircleTree005473
