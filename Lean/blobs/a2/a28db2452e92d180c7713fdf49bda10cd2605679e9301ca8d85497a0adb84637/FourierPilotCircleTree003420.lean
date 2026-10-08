import FourierPilotCircleTree003421
import FourierPilotCircleTree003466
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003420
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![2, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003421.state FourierPilotCircleTree003466.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003421.covered FourierPilotCircleTree003466.covered
#print axioms covered
end FourierPilotCircleTree003420
