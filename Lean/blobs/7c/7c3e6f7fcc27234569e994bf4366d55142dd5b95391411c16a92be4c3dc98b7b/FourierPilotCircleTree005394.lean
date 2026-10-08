import FourierPilotCircleTree005395
import FourierPilotCircleTree005418
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005394
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![4, 13, 5, 6, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree005395.state FourierPilotCircleTree005418.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005395.covered FourierPilotCircleTree005418.covered
#print axioms covered
end FourierPilotCircleTree005394
