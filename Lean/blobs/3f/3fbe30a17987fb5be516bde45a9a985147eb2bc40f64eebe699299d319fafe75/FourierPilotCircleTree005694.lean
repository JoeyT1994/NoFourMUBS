import FourierPilotCircleTree005695
import FourierPilotCircleTree005696
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005694
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![57, 57, 63, 87, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005695.state FourierPilotCircleTree005696.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005695.covered FourierPilotCircleTree005696.covered
#print axioms covered
end FourierPilotCircleTree005694
