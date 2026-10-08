import FourierPilotCircleTree004847
import FourierPilotCircleTree004848
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004846
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![2, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004847.state FourierPilotCircleTree004848.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004847.covered FourierPilotCircleTree004848.covered
#print axioms covered
end FourierPilotCircleTree004846
