import FourierPilotCircleTree003621
import FourierPilotCircleTree003650
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003620
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![23, 12, 15, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003621.state FourierPilotCircleTree003650.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003621.covered FourierPilotCircleTree003650.covered
#print axioms covered
end FourierPilotCircleTree003620
