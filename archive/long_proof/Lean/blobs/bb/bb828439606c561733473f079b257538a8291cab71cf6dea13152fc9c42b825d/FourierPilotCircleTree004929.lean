import FourierPilotCircleTree004930
import FourierPilotCircleTree004931
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004929
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![11, 4, 7, 4, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004930.state FourierPilotCircleTree004931.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004930.covered FourierPilotCircleTree004931.covered
#print axioms covered
end FourierPilotCircleTree004929
