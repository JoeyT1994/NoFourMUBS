import FourierPilotCircleTree002866
import FourierPilotCircleTree002867
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002865
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![2, 2, 3, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree002866.state FourierPilotCircleTree002867.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002866.covered FourierPilotCircleTree002867.covered
#print axioms covered
end FourierPilotCircleTree002865
