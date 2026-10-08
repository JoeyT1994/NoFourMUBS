import FourierPilotCircleTree004366
import FourierPilotCircleTree004367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004365
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![27, 17, 20, 42, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004366.state FourierPilotCircleTree004367.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004366.covered FourierPilotCircleTree004367.covered
#print axioms covered
end FourierPilotCircleTree004365
