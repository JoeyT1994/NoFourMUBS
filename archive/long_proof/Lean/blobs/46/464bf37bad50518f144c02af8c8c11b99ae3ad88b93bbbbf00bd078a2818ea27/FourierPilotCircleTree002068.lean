import FourierPilotCircleTree002069
import FourierPilotCircleTree002070
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002068
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![40, 55, 16, 30, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002069.state FourierPilotCircleTree002070.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002069.covered FourierPilotCircleTree002070.covered
#print axioms covered
end FourierPilotCircleTree002068
