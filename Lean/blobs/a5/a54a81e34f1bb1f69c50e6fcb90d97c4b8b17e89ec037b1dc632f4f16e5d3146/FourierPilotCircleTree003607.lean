import FourierPilotCircleTree003608
import FourierPilotCircleTree003653
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003607
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![5, 6, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003608.state FourierPilotCircleTree003653.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003608.covered FourierPilotCircleTree003653.covered
#print axioms covered
end FourierPilotCircleTree003607
