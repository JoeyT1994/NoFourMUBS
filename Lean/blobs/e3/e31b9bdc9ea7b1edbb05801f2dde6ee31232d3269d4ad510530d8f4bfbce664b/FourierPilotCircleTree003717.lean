import FourierPilotCircleTree003718
import FourierPilotCircleTree003727
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003717
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![3, 3, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003718.state FourierPilotCircleTree003727.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003718.covered FourierPilotCircleTree003727.covered
#print axioms covered
end FourierPilotCircleTree003717
