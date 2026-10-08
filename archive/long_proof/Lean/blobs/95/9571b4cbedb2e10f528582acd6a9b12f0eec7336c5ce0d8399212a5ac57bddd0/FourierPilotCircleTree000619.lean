import FourierPilotCircleTree000620
import FourierPilotCircleTree000621
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000619
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![11, 11, 10, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000620.state FourierPilotCircleTree000621.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000620.covered FourierPilotCircleTree000621.covered
#print axioms covered
end FourierPilotCircleTree000619
