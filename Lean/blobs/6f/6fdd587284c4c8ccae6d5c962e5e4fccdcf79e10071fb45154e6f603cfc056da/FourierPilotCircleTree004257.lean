import FourierPilotCircleTree004258
import FourierPilotCircleTree004259
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004257
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![23, 28, 15, 8, 21]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004258.state FourierPilotCircleTree004259.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004258.covered FourierPilotCircleTree004259.covered
#print axioms covered
end FourierPilotCircleTree004257
