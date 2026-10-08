import FourierPilotCircleTree002389
import FourierPilotCircleTree002404
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002388
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![7, 11, 7, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002389.state FourierPilotCircleTree002404.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002389.covered FourierPilotCircleTree002404.covered
#print axioms covered
end FourierPilotCircleTree002388
