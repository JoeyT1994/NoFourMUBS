import FourierPilotCircleTree000121
import FourierPilotCircleTree000142
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000120
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, false, false]
def state : State := ![13, 4, 10, 7, 6]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000121.state FourierPilotCircleTree000142.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000121.covered FourierPilotCircleTree000142.covered
#print axioms covered
end FourierPilotCircleTree000120
