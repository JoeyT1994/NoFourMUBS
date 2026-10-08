import FourierPilotCircleTree004846
import FourierPilotCircleTree004917
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004845
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004846.state FourierPilotCircleTree004917.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004846.covered FourierPilotCircleTree004917.covered
#print axioms covered
end FourierPilotCircleTree004845
