import FourierPilotCircleTree004226
import FourierPilotCircleTree004231
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004225
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![2, 2, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004226.state FourierPilotCircleTree004231.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004226.covered FourierPilotCircleTree004231.covered
#print axioms covered
end FourierPilotCircleTree004225
