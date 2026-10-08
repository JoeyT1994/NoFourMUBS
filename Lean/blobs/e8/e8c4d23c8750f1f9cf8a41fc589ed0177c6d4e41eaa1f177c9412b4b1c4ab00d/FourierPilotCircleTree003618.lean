import FourierPilotCircleTree003619
import FourierPilotCircleTree003620
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003618
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, true]
def state : State := ![11, 12, 15, 13, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree003619.state FourierPilotCircleTree003620.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003619.covered FourierPilotCircleTree003620.covered
#print axioms covered
end FourierPilotCircleTree003618
