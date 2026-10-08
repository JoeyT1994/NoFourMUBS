import FourierPilotCircleTree003603
import FourierPilotCircleTree003604
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003602
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![2, 3, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003603.state FourierPilotCircleTree003604.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003603.covered FourierPilotCircleTree003604.covered
#print axioms covered
end FourierPilotCircleTree003602
