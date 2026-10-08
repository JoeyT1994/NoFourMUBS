import FourierPilotCircleTree003633
import FourierPilotCircleTree003634
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003632
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![46, 49, 31, 53, 42]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree003633.state FourierPilotCircleTree003634.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003633.covered FourierPilotCircleTree003634.covered
#print axioms covered
end FourierPilotCircleTree003632
