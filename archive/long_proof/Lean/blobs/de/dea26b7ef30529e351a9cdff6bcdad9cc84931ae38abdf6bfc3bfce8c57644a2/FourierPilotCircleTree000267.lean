import FourierPilotCircleTree000268
import FourierPilotCircleTree000291
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000267
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![11, 7, 7, 7, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000268.state FourierPilotCircleTree000291.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000268.covered FourierPilotCircleTree000291.covered
#print axioms covered
end FourierPilotCircleTree000267
