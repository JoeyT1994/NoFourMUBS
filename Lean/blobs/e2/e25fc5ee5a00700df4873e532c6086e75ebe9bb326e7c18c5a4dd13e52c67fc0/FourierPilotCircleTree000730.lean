import FourierPilotCircleTree000731
import FourierPilotCircleTree000732
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000730
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![12, 12, 6, 4, 5]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000731.state FourierPilotCircleTree000732.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000731.covered FourierPilotCircleTree000732.covered
#print axioms covered
end FourierPilotCircleTree000730
