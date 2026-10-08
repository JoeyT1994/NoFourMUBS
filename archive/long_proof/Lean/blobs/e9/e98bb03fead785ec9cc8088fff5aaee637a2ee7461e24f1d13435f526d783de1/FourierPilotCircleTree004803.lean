import FourierPilotCircleTree004804
import FourierPilotCircleTree004817
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004803
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![49, 50, 54, 17, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree004804.state FourierPilotCircleTree004817.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004804.covered FourierPilotCircleTree004817.covered
#print axioms covered
end FourierPilotCircleTree004803
