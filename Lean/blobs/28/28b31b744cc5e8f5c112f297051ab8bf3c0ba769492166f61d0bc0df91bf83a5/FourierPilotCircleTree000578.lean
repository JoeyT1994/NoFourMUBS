import FourierPilotCircleTree000579
import FourierPilotCircleTree000582
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000578
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![3, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000579.state FourierPilotCircleTree000582.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000579.covered FourierPilotCircleTree000582.covered
#print axioms covered
end FourierPilotCircleTree000578
