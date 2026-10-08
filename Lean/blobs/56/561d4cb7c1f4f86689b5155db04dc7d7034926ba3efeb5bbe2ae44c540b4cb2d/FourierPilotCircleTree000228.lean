import FourierPilotCircleTree000229
import FourierPilotCircleTree000230
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000228
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![9, 13, 10, 12, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000229.state FourierPilotCircleTree000230.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000229.covered FourierPilotCircleTree000230.covered
#print axioms covered
end FourierPilotCircleTree000228
