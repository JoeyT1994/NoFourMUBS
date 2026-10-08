import FourierPilotCircleTree004928
import FourierPilotCircleTree004929
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004927
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![5, 4, 7, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree004928.state FourierPilotCircleTree004929.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004928.covered FourierPilotCircleTree004929.covered
#print axioms covered
end FourierPilotCircleTree004927
