import FourierPilotCircleTree004650
import FourierPilotCircleTree004651
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004649
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![5, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004650.state FourierPilotCircleTree004651.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004650.covered FourierPilotCircleTree004651.covered
#print axioms covered
end FourierPilotCircleTree004649
