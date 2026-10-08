import FourierPilotCircleTree000122
import FourierPilotCircleTree000123
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000121
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![13, 4, 10, 7, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000122.state FourierPilotCircleTree000123.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000122.covered FourierPilotCircleTree000123.covered
#print axioms covered
end FourierPilotCircleTree000121
