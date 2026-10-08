import FourierPilotCircleTree004918
import FourierPilotCircleTree004937
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004917
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![2, 2, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004918.state FourierPilotCircleTree004937.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004918.covered FourierPilotCircleTree004937.covered
#print axioms covered
end FourierPilotCircleTree004917
