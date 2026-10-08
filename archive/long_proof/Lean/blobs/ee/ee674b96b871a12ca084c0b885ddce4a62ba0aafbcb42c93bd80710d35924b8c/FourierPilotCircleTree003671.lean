import FourierPilotCircleTree003672
import FourierPilotCircleTree003709
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003671
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![12, 11, 4, 5, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003672.state FourierPilotCircleTree003709.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003672.covered FourierPilotCircleTree003709.covered
#print axioms covered
end FourierPilotCircleTree003671
