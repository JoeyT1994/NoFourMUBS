import FourierPilotCircleTree000751
import FourierPilotCircleTree000766
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000750
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![49, 50, 27, 17, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000751.state FourierPilotCircleTree000766.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000751.covered FourierPilotCircleTree000766.covered
#print axioms covered
end FourierPilotCircleTree000750
