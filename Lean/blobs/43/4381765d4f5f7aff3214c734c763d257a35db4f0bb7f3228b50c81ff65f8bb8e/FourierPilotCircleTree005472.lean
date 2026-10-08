import FourierPilotCircleTree005473
import FourierPilotCircleTree005504
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005472
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![6, 4, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005473.state FourierPilotCircleTree005504.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005473.covered FourierPilotCircleTree005504.covered
#print axioms covered
end FourierPilotCircleTree005472
