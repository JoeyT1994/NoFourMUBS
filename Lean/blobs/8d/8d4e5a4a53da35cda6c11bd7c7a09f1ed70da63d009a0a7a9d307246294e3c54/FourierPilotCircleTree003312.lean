import FourierPilotCircleTree003313
import FourierPilotCircleTree003342
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003312
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, true]
def state : State := ![15, 20, 27, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003313.state FourierPilotCircleTree003342.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003313.covered FourierPilotCircleTree003342.covered
#print axioms covered
end FourierPilotCircleTree003312
