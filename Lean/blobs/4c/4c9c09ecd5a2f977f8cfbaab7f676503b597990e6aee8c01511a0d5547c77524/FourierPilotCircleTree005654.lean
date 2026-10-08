import FourierPilotCircleTree005655
import FourierPilotCircleTree005656
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005654
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![6, 6, 7, 5, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005655.state FourierPilotCircleTree005656.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005655.covered FourierPilotCircleTree005656.covered
#print axioms covered
end FourierPilotCircleTree005654
