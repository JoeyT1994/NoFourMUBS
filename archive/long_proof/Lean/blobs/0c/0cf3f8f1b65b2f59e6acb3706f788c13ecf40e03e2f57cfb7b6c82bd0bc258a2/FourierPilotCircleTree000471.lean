import FourierPilotCircleTree000472
import FourierPilotCircleTree000473
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000471
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![3, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000472.state FourierPilotCircleTree000473.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000472.covered FourierPilotCircleTree000473.covered
#print axioms covered
end FourierPilotCircleTree000471
