import FourierPilotCircleTree004629
import FourierPilotCircleTree004630
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004628
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, true]
def state : State := ![3, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004629.state FourierPilotCircleTree004630.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004629.covered FourierPilotCircleTree004630.covered
#print axioms covered
end FourierPilotCircleTree004628
