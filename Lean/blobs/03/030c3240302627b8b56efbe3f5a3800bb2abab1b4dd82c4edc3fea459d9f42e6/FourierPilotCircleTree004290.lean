import FourierPilotCircleTree004291
import FourierPilotCircleTree004292
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004290
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![10, 7, 6, 6, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004291.state FourierPilotCircleTree004292.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004291.covered FourierPilotCircleTree004292.covered
#print axioms covered
end FourierPilotCircleTree004290
