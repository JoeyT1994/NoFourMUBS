import FourierPilotCircleTree002728
import FourierPilotCircleTree002729
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002727
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![2, 3, 3, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree002728.state FourierPilotCircleTree002729.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002728.covered FourierPilotCircleTree002729.covered
#print axioms covered
end FourierPilotCircleTree002727
