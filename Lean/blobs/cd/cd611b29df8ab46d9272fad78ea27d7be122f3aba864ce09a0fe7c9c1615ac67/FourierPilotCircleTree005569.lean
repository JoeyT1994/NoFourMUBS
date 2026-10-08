import FourierPilotCircleTree005570
import FourierPilotCircleTree005613
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005569
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, true]
def state : State := ![4, 4, 4, 6, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005570.state FourierPilotCircleTree005613.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005570.covered FourierPilotCircleTree005613.covered
#print axioms covered
end FourierPilotCircleTree005569
